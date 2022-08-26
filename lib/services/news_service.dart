import 'package:flutter/material.dart';
import 'package:news/models/base_response.dart';
import 'package:news/models/error_model.dart';
import 'package:news/models/news_model.dart';
import 'package:news/services/base_service.dart';
import 'package:news/utils/app_constants.dart';
import 'package:news/utils/url.dart';

class NewsService extends BaseService {
  Future getNews({Language? language}) async {
    try {
      var url = '${Url.newsUrl}&language=${_languageCode(language)}';
      var response = await apiRequest(url: url, method: ApiMethod.get);

      if (response != null) {
        var result = BaseResponse<List<NewsModel>>.fromJsonList(
          response,
          (data) => data.map((e) => NewsModel.fromJson(e)).toList(),
        );

        return result;
      }
    } catch (ex) {
      debugPrint(ex.toString());
    }
    return _defaultResponse();
  }

  _languageCode(Language? language) {
    switch (language) {
      case Language.english:
        return 'en';
      case Language.hindi:
        return 'hi';
      default:
        return 'en,hi';
    }
  }

  _defaultResponse() {
    return const BaseResponse<ErrorModel>(
      status: ApiStatus.error,
      results: ErrorModel(message: 'Something went wrong, Please try again.'),
      nextPage: null,
      totalResults: null,
    );
  }
}
