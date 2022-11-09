import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:video_list/providers/video_provider.dart';
import 'package:video_list/providers/video_state.dart';
import 'package:video_list/ui/video_page.dart';
import 'package:video_list/utils/app_constants.dart';

class HomePage extends ConsumerStatefulWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  ConsumerState createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> {
  @override
  void initState() {
    super.initState();

    Future.delayed(Duration.zero, () async {
      var json = await DefaultAssetBundle.of(context).loadString('assets/json.txt');
      ref.read(videoProvider.notifier).loadJson(json);
    });
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(videoProvider);
    final notifier = ref.read(videoProvider.notifier);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Videos'),
      ),
      backgroundColor: Colors.grey.shade100,
      body: ListView.builder(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
        itemCount: state.videoList.length,
        itemBuilder: (context, index) {
          var item = state.videoList[index];
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 5),
            child: Card(
              color: Colors.white,
              elevation: 2,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
              ),
              child: Column(
                children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.only(topLeft: Radius.circular(5), topRight: Radius.circular(5)),
                    child: CachedNetworkImage(
                      imageUrl: '$thumbnailUrl${item.thumb}',
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              item.title!,
                              style: const TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            const SizedBox(height: 3),
                            Text(
                              item.subtitle!,
                              style: const TextStyle(
                                color: Colors.grey,
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                        Stack(
                          alignment: Alignment.centerRight,
                          children: [
                            Visibility(
                              visible: (item.isDownloading == null || !item.isDownloading!) && item.filePath == null,
                              child: InkWell(
                                onTap: () => notifier.mapEvents(VideoEvent.download(video: item)),
                                child: const Icon(
                                  Icons.cloud_download,
                                  color: Colors.grey,
                                  size: 30,
                                ),
                              ),
                            ),
                            Visibility(
                              visible: item.isDownloading != null && item.isDownloading! && item.filePath == null,
                              child: SizedBox(
                                height: 30,
                                width: 30,
                                child: Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    CircularProgressIndicator(
                                      value: item.progress != null ? item.progress! / 100 : null,
                                    ),
                                    Text(
                                      item.progress != null ? '${item.progress!.toString()}%' : '',
                                      style: const TextStyle(
                                        fontSize: 10,
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Visibility(
                              visible: item.filePath != null,
                              child: InkWell(
                                onTap: () {
                                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                                    return VideoPage(video: item);
                                  }));
                                },
                                child: const Icon(
                                  Icons.play_circle,
                                  color: Colors.grey,
                                  size: 30,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
