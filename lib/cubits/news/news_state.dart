part of 'news_cubit.dart';

abstract class NewsState extends Equatable {
  const NewsState();
}

class NewsInitial extends NewsState {
  @override
  List<Object> get props => [];
}

class NewsData extends NewsState {
  final List<NewsModel> newsList;

  const NewsData({required this.newsList});

  @override
  List<Object?> get props => [newsList];

  Map<String, dynamic> toJson() {
    return {'news': newsList};
  }
}

class NewsError extends NewsState {
  final String error;

  const NewsError({required this.error});

  @override
  List<Object?> get props => [error];
}
