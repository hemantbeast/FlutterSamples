part of 'news_cubit.dart';

class NewsState extends Equatable {
  final String error;
  final List<NewsModel> newsList;

  const NewsState({
    required this.error,
    required this.newsList,
  });

  factory NewsState.initial() => const NewsState(error: '', newsList: []);

  @override
  List<Object?> get props => [newsList, error];

  Map<String, dynamic> toJson() {
    return {'error': error, 'news': newsList};
  }
}
