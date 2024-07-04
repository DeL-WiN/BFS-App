// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PathDto _$PathDtoFromJson(Map<String, dynamic> json) => PathDto(
      error: json['error'] as bool?,
      message: json['message'] as String?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => Datum.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$PathDtoToJson(PathDto instance) => <String, dynamic>{
      'error': instance.error,
      'message': instance.message,
      'data': instance.data,
    };

Datum _$DatumFromJson(Map<String, dynamic> json) => Datum(
      id: json['id'] as String?,
      field:
          (json['field'] as List<dynamic>?)?.map((e) => e as String).toList(),
      start: json['start'] == null
          ? null
          : StepDto.fromJson(json['start'] as Map<String, dynamic>),
      end: json['end'] == null
          ? null
          : StepDto.fromJson(json['end'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$DatumToJson(Datum instance) => <String, dynamic>{
      'id': instance.id,
      'field': instance.field,
      'start': instance.start,
      'end': instance.end,
    };

ResultDto _$ResultDtoFromJson(Map<String, dynamic> json) => ResultDto(
      id: json['id'] as String?,
      result: json['result'] == null
          ? null
          : Result.fromJson(json['result'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ResultDtoToJson(ResultDto instance) => <String, dynamic>{
      'id': instance.id,
      'result': instance.result,
    };

Result _$ResultFromJson(Map<String, dynamic> json) => Result(
      steps: (json['steps'] as List<dynamic>?)
          ?.map((e) => StepDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      path: json['path'] as String?,
    );

Map<String, dynamic> _$ResultToJson(Result instance) => <String, dynamic>{
      'steps': instance.steps,
      'path': instance.path,
    };

StepDto _$StepDtoFromJson(Map<String, dynamic> json) => StepDto(
      x: json['x'] as int?,
      y: json['y'] as int?,
    );

Map<String, dynamic> _$StepDtoToJson(StepDto instance) => <String, dynamic>{
      'x': instance.x,
      'y': instance.y,
    };
