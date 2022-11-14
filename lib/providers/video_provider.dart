import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:path_provider/path_provider.dart';
import 'package:video_list/models/response_model.dart';
import 'package:video_list/providers/video_state.dart';

final videoProvider = StateNotifierProvider.autoDispose<VideoNotifier, VideoState>((ref) {
  return VideoNotifier(ref: ref);
});

class VideoNotifier extends StateNotifier<VideoState> {
  final Ref ref;
  List<String> tasks = [];

  VideoNotifier({required this.ref}) : super(VideoState.initial());

  mapEvents(VideoEvent event) {
    event.map(
      download: (value) => downloadVideo(value.video),
    );
  }

  loadJson(String json) async {
    var box = Hive.box('videoList');

    if (box.isNotEmpty) {
      List<dynamic> videos = box.get('videos');
      state = state.copyWith(videoList: videos.cast<VideoModel>());
      return;
    }

    var response = ResponseModel.fromJson(jsonDecode(json));
    var list = response.categories?.first.videos;

    if (list != null) {
      state = state.copyWith(videoList: list);
      box.put('videos', list);
    }
  }

  downloadVideo(VideoModel video) async {
    Directory? dir;

    if (Platform.isAndroid) {
      dir = await getExternalStorageDirectory();
    } else {
      dir = await getApplicationDocumentsDirectory();
    }

    var list = state.videoList.toList();
    list.firstWhere((element) => element.title == video.title).isDownloading = true;
    state = state.copyWith(videoList: list);

    var file = await downloadFile(
      video.sources!.first,
      dir!.path,
      (progress) {
        list.firstWhere((element) => element.title == video.title).progress = progress;
        state = state.copyWith(videoList: list);
      },
    );

    if (file != null) {
      list.firstWhere((element) => element.title == video.title).filePath = file;
    }
    list.firstWhere((element) => element.title == video.title).isDownloading = false;
    state = state.copyWith(videoList: list);
    Hive.box('videoList').put('videos', list);
  }

  Future<String?> downloadFile(String url, String dir, Function(int) onDownloadProgress) async {
    try {
      var uri = Uri.parse(url);
      var filePath = '$dir/${uri.path.split('/').last}';
      var response = await Dio().downloadUri(
        uri,
        filePath,
        onReceiveProgress: (count, total) {
          int percentage = ((count / total) * 100).floor();
          onDownloadProgress.call(percentage);
        },
      );

      if (response.statusCode == 200) {
        return filePath;
      } else {
        debugPrint('Error code: ${response.statusCode}');
      }
    } catch (ex) {
      debugPrint('Can not fetch url');
    }
    return null;
  }
}
