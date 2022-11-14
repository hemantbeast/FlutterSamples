import 'dart:io';

import 'package:flick_video_player/flick_video_player.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:video_list/models/response_model.dart';
import 'package:video_list/ui/video_controls.dart';
import 'package:video_player/video_player.dart';

class VideoPage extends StatefulWidget {
  final VideoModel video;

  const VideoPage({Key? key, required this.video}) : super(key: key);

  @override
  State<VideoPage> createState() => _VideoPageState();
}

class _VideoPageState extends State<VideoPage> {
  late FlickManager flickManager;

  @override
  void initState() {
    super.initState();
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeRight,
      DeviceOrientation.landscapeLeft,
    ]);

    flickManager = FlickManager(
      videoPlayerController: VideoPlayerController.file(
        File(widget.video.filePath!),
      ),
    );
    // flickManager.flickControlManager?.enterFullscreen();
  }

  @override
  void dispose() {
    flickManager.dispose();
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black,
        child: Center(
          child: AspectRatio(
            aspectRatio: 16 / 9,
            child: FlickVideoPlayer(
              flickManager: flickManager,
              systemUIOverlay: const [],
              preferredDeviceOrientation: const [
                DeviceOrientation.landscapeLeft,
                DeviceOrientation.landscapeRight,
              ],
              flickVideoWithControls: FlickVideoWithControls(
                controls: VideoControls(
                  onTap: () {
                    flickManager.flickControlManager?.pause();
                    Navigator.pop(context);
                  },
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
