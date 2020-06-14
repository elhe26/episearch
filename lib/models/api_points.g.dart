// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_points.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

APIPoints _$APIPointsFromJson(Map<String, dynamic> json) {
  return APIPoints(
    baseUrl: json['baseUrl'] as String,
    countries: json['countries'] as String,
    dayOneCountry: json['dayOneCountry'] as String,
    totalDayOneByCountryStatus: json['totalDayOneByCountryStatus'] as String,
    totalByCountry: json['totalByCountry'] as String,
    liveByCountry: json['liveByCountry'] as String,
    stats: json['stats'] as String,
  );
}

Map<String, dynamic> _$APIPointsToJson(APIPoints instance) => <String, dynamic>{
      'baseUrl': instance.baseUrl,
      'countries': instance.countries,
      'dayOneCountry': instance.dayOneCountry,
      'totalDayOneByCountryStatus': instance.totalDayOneByCountryStatus,
      'totalByCountry': instance.totalByCountry,
      'liveByCountry': instance.liveByCountry,
      'stats': instance.stats,
    };
