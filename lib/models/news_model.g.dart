// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'news_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NewsModel _$NewsModelFromJson(Map<String, dynamic> json) => NewsModel(
      title: json['title'] as String?,
      link: json['link'] as String?,
      keywords: (json['keywords'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      creator:
          (json['creator'] as List<dynamic>?)?.map((e) => e as String).toList(),
      videoUrl: json['videoUrl'] as String?,
      description: json['description'] as String?,
      content: json['content'] as String?,
      pubDate: json['pubDate'] == null
          ? null
          : DateTime.parse(json['pubDate'] as String),
      imageUrl: json['imageUrl'] as String?,
      sourceId: json['sourceId'] as String?,
      country:
          (json['country'] as List<dynamic>?)?.map((e) => e as String).toList(),
      category: (json['category'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$CategoryEnumMap, e))
          .toList(),
      language: $enumDecodeNullable(_$LanguageEnumMap, json['language']),
    );

Map<String, dynamic> _$NewsModelToJson(NewsModel instance) => <String, dynamic>{
      'title': instance.title,
      'link': instance.link,
      'keywords': instance.keywords,
      'creator': instance.creator,
      'videoUrl': instance.videoUrl,
      'description': instance.description,
      'content': instance.content,
      'pubDate': instance.pubDate?.toIso8601String(),
      'imageUrl': instance.imageUrl,
      'sourceId': instance.sourceId,
      'country': instance.country,
      'category': instance.category?.map((e) => _$CategoryEnumMap[e]!).toList(),
      'language': _$LanguageEnumMap[instance.language],
    };

const _$CategoryEnumMap = {
  Category.business: 'business',
  Category.entertainment: 'entertainment',
  Category.environment: 'environment',
  Category.food: 'food',
  Category.health: 'health',
  Category.politics: 'politics',
  Category.science: 'science',
  Category.sports: 'sports',
  Category.technology: 'technology',
  Category.top: 'top',
  Category.world: 'world',
};

const _$LanguageEnumMap = {
  Language.english: 'english',
  Language.hindi: 'hindi',
};
