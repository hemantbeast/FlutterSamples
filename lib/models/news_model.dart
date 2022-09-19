import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:news/utils/app_constants.dart';
import 'package:news/utils/enum_conversion.dart';

part 'news_model.g.dart';

@JsonSerializable()
class NewsModel extends Equatable {
  final String? title;
  final String? link;
  final List<String>? keywords;
  final List<String>? creator;
  final String? videoUrl;
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

  factory NewsModel.fromJson(Map<String, dynamic> json) => _$NewsModelFromJson(json);

  Map<String, dynamic> toJson() => _$NewsModelToJson(this);

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
