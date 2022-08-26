import 'package:news/secrets.dart';

class Url {
  static String baseUrl = 'https://newsdata.io';
  static String apiUrl = '$baseUrl/api/1/';

  static String newsUrl = 'news?apiKey=$newsApiKey';
}
