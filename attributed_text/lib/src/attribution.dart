import 'package:json_annotation/json_annotation.dart';

part 'attribution.g.dart';

@JsonSerializable()
class Attribution {
  const Attribution(this.id, [this.data = const <String, dynamic>{}]);

  final String id;

  String get name => id;

  final Map<String, dynamic> data;

  bool canMergeWith(Attribution other) {
    return this == other;
  }

  String toString() {
    return '[Attribution]: $name';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Attribution &&
          runtimeType == other.runtimeType &&
          id == other.id;

  @override
  int get hashCode => id.hashCode;

  factory Attribution.fromJson(Map<String, dynamic> json) =>
      _$AttributionFromJson(json);

  /// Connect the generated [_$PersonToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$AttributionToJson(this);
}
