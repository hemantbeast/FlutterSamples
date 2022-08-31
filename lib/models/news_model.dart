import 'package:equatable/equatable.dart';
import 'package:news/utils/app_constants.dart';
import 'package:news/utils/enum_conversion.dart';

class NewsModel extends Equatable {
  final String? title;
  final String? link;
  final List<String>? keywords;
  final List<String>? creator;
  final dynamic videoUrl;
  final String? description;
  final String? content;
  final DateTime? pubDate;
  final String? imageUrl;
  final String? sourceId;
  final List<String>? country;
  final List<Category>? category;
  final Language? language;

  const NewsModel({
    this.title,
    this.link,
    this.keywords,
    this.creator,
    this.videoUrl,
    this.description,
    this.content,
    this.pubDate,
    this.imageUrl,
    this.sourceId,
    this.country,
    this.category,
    this.language,
  });

  factory NewsModel.fromJson(Map<String, dynamic> json) => NewsModel(
        title: json['title'],
        link: json['link'],
        keywords: json['keywords'] == null ? null : List<String>.from(json['keywords'].map((x) => x)),
        creator: json['creator'] == null ? null : List<String>.from(json['creator'].map((x) => x)),
        videoUrl: json['video_url'],
        description: json['description'],
        content: json['content'],
        pubDate: DateTime.parse(json['pubDate']),
        imageUrl: json['image_url'],
        sourceId: json['source_id'],
        country: json['country'] != null ? List<String>.from(json['country'].map((x) => x)) : null,
        category:
            json['category'] != null ? List<Category>.from(json['category'].map((x) => categoryValues.map[x])) : null,
        language: json['language'] != null ? languageValues.map[json['language']] : null,
      );

  Map<String, dynamic> toJson() => {
        "title": title,
        "link": link,
        "keywords": keywords == null ? null : List<dynamic>.from(keywords!.map((x) => x)),
        "creator": creator == null ? null : List<dynamic>.from(creator!.map((x) => x)),
        "video_url": videoUrl,
        "description": description,
        "content": content,
        "pubDate": pubDate?.toIso8601String(),
        "image_url": imageUrl,
        "source_id": sourceId,
        "country": List<dynamic>.from(country!.map((x) => x)),
        "category": List<dynamic>.from(category!.map((x) => categoryValues.reverse![x])),
        "language": languageValues.reverse![language],
      };

  @override
  List<Object?> get props => [
        title,
        link,
        keywords,
        creator,
        videoUrl,
        description,
        content,
        pubDate,
        imageUrl,
        sourceId,
        country,
        category,
        language,
      ];

  static EnumValues<Category> categoryValues = EnumValues({
    'business': Category.business,
    'entertainment': Category.entertainment,
    'environment': Category.environment,
    'food': Category.food,
    'health': Category.health,
    'politics': Category.politics,
    'science': Category.science,
    'sports': Category.sports,
    'technology': Category.technology,
    'top': Category.top,
    'world': Category.world
  });

  static EnumValues<Language> languageValues = EnumValues({
    'english': Language.english,
    'hindi': Language.hindi,
  });
}
