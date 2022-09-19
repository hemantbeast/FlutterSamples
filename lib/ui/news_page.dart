import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news/cubits/news/news_cubit.dart';
import 'package:news/models/news_model.dart';
import 'package:video_player/video_player.dart';

class NewsPage extends StatefulWidget {
  const NewsPage({Key? key}) : super(key: key);

  @override
  State<NewsPage> createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {
  final List<NewsModel> _news = [];
  final ScrollController _scrollController = ScrollController();

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('News'),
      ),
      body: BlocBuilder<NewsCubit, NewsState>(
        builder: (context, state) {
          if (state.error.isNotEmpty) {
            return Center(
              child: Text(state.error),
            );
          } else if (state.newsList.isNotEmpty || _news.isNotEmpty) {
            for (int i = 0; i < state.newsList.length; i++) {
              var item = state.newsList[i];
              if (!_news.any((element) => element.title == item.title && element.link == item.link)) {
                _news.add(item);
              }
            }

            return ListView.builder(
              physics: const BouncingScrollPhysics(),
              itemCount: _news.length + 1,
              controller: _scrollController
                ..addListener(() {
                  if (_scrollController.offset == _scrollController.position.maxScrollExtent &&
                      !context.read<NewsCubit>().isFetching) {
                    context.read<NewsCubit>()
                      ..isFetching = true
                      ..getNewsList();
                  }
                }),
              itemBuilder: (context, index) {
                if (index == _news.length) {
                  return const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                    child: SizedBox(
                      height: 40,
                      child: Center(
                        child: CircularProgressIndicator(color: Colors.blue),
                      ),
                    ),
                  );
                }
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                  child: Card(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(7)),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(7),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          _imageVideoView(_news[index]),
                          const SizedBox(height: 10),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8),
                            child: Text(
                              _news[index].title ?? '',
                              maxLines: 2,
                              style: const TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(8, 5, 8, 8),
                            child: Text(
                              _news[index].description ?? _news[index].content ?? '',
                              maxLines: 3,
                              style: const TextStyle(
                                fontSize: 14,
                                color: Colors.grey,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            );
          } else {
            return const Center(
              child: CircularProgressIndicator(color: Colors.blue),
            );
          }
        },
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
}
