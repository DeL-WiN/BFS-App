import 'package:json_annotation/json_annotation.dart';

part 'dto.g.dart';

@JsonSerializable()
class PathDto {
  final bool? error;
  final String? message;
  final List<Datum>? data;

  PathDto({
    this.error,
    this.message,
    this.data,
  });

  factory PathDto.fromJson(Map<String, dynamic> json) =>
      _$PathDtoFromJson(json);

  Map<String, dynamic> toJson() => _$PathDtoToJson(this);
}

@JsonSerializable()
class Datum {
  final String? id;
  final List<String>? field;
  final StepDto? start;
  final StepDto? end;

  Datum({
    this.id,
    this.field,
    this.start,
    this.end,
  });

  factory Datum.fromJson(Map<String, dynamic> json) => _$DatumFromJson(json);

  Map<String, dynamic> toJson() => _$DatumToJson(this);
}

@JsonSerializable()
class ResultDto {
  final String? id;
  final Result? result;
  @JsonKey(includeFromJson: false, includeToJson: false)
  final Datum? data;

  ResultDto({
    this.id,
    this.result,
    this.data,
  });

  factory ResultDto.fromJson(Map<String, dynamic> json) =>
      _$ResultDtoFromJson(json);

  Map<String, dynamic> toJson() => _$ResultDtoToJson(this);
}
@JsonSerializable()
class Result {
  final List<StepDto>? steps;
  final String? path;

  Result({
    this.steps,
    this.path,
  });

  factory Result.fromJson(Map<String, dynamic> json) => _$ResultFromJson(json);

  Map<String, dynamic> toJson() => _$ResultToJson(this);

}

@JsonSerializable()
class StepDto {
  final int? x;
  final int? y;

  StepDto({
    this.x,
    this.y,
  });

  factory StepDto.fromJson(Map<String, dynamic> json) =>
      _$StepDtoFromJson(json);

  Map<String, dynamic> toJson() => _$StepDtoToJson(this);

}

class ColorPoints {
  final bool isStart;
  final bool isEnd;
  final bool isPath;
  final bool isWall;
  final StepDto? step;

  ColorPoints({ this.isStart = false,  this.isEnd = false,  this.isPath = false,  this.isWall = false,  this.step});

}

