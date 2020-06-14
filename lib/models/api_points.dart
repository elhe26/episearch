import 'package:json_annotation/json_annotation.dart';

part 'api_points.g.dart';

@JsonSerializable()
class APIPoints {
  final String baseUrl;
  final String countries;
  final String dayOneCountry;
  final String totalDayOneByCountryStatus;
  final String totalByCountry;
  final String liveByCountry;
  final String stats;

  APIPoints({
    this.baseUrl,
    this.countries,
    this.dayOneCountry,
    this.totalDayOneByCountryStatus,
    this.totalByCountry,
    this.liveByCountry,
    this.stats,
  });

  factory APIPoints.fromJson(Map<String, dynamic> json) =>
      _$APIPointsFromJson(json);

  Map<String, dynamic> toJson() => _$APIPointsToJson(this);
}
