import 'package:equatable/equatable.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:news/models/base_response.dart';
import 'package:news/models/error_model.dart';
import 'package:news/models/news_model.dart';
import 'package:news/services/news_service.dart';

part 'news_state.dart';

class NewsCubit extends HydratedCubit<NewsState> {
  final NewsService service;

  NewsCubit(this.service) : super(NewsState.initial()) {
    getNewsList();
  }

  getNewsList() async {
    var response = await service.getNews();

    if (response is BaseResponse<ErrorModel>) {
      emit(NewsState(error: response.results!.message!, newsList: const []));
      return;
    }

    if (response is BaseResponse<List<NewsModel>>) {
      emit(NewsState(newsList: response.results!, error: ''));
    }
  }

  @override
  NewsState? fromJson(Map<String, dynamic> json) {
    try {
      final list = (json['news'] as List).map((e) => NewsModel.fromJson(e as Map<String, dynamic>)).toList();
      return NewsState(newsList: list, error: '');
    } catch (e) {
      return null;
    }
  }

  @override
  Map<String, dynamic>? toJson(NewsState state) {
    return state.toJson();
  }
}
