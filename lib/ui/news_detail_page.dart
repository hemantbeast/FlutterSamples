import 'package:basic_utils/basic_utils.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:news/models/news_model.dart';
import 'package:url_launcher/url_launcher_string.dart';
import 'package:video_player/video_player.dart';

class NewsDetailPage extends StatefulWidget {
  final NewsModel news;

  const NewsDetailPage({
    Key? key,
    required this.news,
  }) : super(key: key);

  @override
  State<NewsDetailPage> createState() => _NewsDetailPageState();
}

class _NewsDetailPageState extends State<NewsDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('News Detail'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    widget.news.title!,
                    style: const TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 20),
                  _imageVideoView(widget.news),
                  const SizedBox(height: 20),
                  Text(
                    widget.news.description != null ? widget.news.description! : widget.news.content!,
                    style: const TextStyle(
                      fontSize: 15,
                      color: Colors.grey,
                    ),
                  ),
                  const SizedBox(height: 20),
                  Text.rich(
                    TextSpan(
                      children: [
                        const TextSpan(
                          text: 'Country: ',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        TextSpan(
                          text: StringUtils.capitalize(_getCountry(widget.news), allWords: true),
                          style: const TextStyle(
                            color: Colors.grey,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: ElevatedButton(
              onPressed: () {
                if (widget.news.link != null) {
                  launchUrlString(widget.news.link!);
                }
              },
              style: ElevatedButton.styleFrom(
                elevation: 2,
                textStyle: const TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                ),
              ),
              child: const Text('Go to site'),
            ),
          ),
        ],
      ),
    );
  }

  Widget _imageVideoView(NewsModel news) {
    if (news.imageUrl != null && news.imageUrl!.isNotEmpty) {
      return CachedNetworkImage(
        imageUrl:
            news.imageUrl ?? 'https://www.slntechnologies.com/wp-content/uploads/2017/08/ef3-placeholder-image.jpg',
        height: 200,
        fit: BoxFit.fitWidth,
        errorWidget: (context, url, error) {
          return Image.network(
            'https://www.slntechnologies.com/wp-content/uploads/2017/08/ef3-placeholder-image.jpg',
            height: 200,
            fit: BoxFit.fitWidth,
          );
        },
      );
    } else if (news.videoUrl != null && news.videoUrl!.isNotEmpty) {
      final controller = VideoPlayerController.network(news.videoUrl!)..initialize();

      return controller.value.isInitialized
          ? AspectRatio(
              aspectRatio: controller.value.aspectRatio,
              child: VideoPlayer(controller),
            )
          : _placeholderImage();
    } else {
      return _placeholderImage();
    }
  }

  Widget _placeholderImage() {
    return CachedNetworkImage(
      imageUrl: 'https://www.slntechnologies.com/wp-content/uploads/2017/08/ef3-placeholder-image.jpg',
      height: 200,
      fit: BoxFit.fitWidth,
    );
  }

  String _getCountry(NewsModel news) {
    String country = '';

    if (news.country == null) {
      return '';
    }

    for (int i = 0; i < news.country!.length; i++) {
      var item = news.country![i];
      country += i == news.country!.length - 1 ? item : '$item, ';
    }
    return country;
  }
}
