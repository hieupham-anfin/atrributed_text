// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attributed_spans.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SpanMarker _$SpanMarkerFromJson(Map<String, dynamic> json) => SpanMarker(
      attribution:
          Attribution.fromJson(json['attribution'] as Map<String, dynamic>),
      offset: json['offset'] as int,
      markerType: $enumDecode(_$SpanMarkerTypeEnumMap, json['markerType']),
    );

Map<String, dynamic> _$SpanMarkerToJson(SpanMarker instance) =>
    <String, dynamic>{
      'attribution': instance.attribution.toJson(),
      'offset': instance.offset,
      'markerType': _$SpanMarkerTypeEnumMap[instance.markerType]!,
    };

const _$SpanMarkerTypeEnumMap = {
  SpanMarkerType.start: 'start',
  SpanMarkerType.end: 'end',
};
