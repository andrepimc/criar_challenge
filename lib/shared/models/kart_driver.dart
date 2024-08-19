import 'dart:convert';

class KartDriver {
  final int id;
  final String name;
  KartDriver({
    required this.id,
    required this.name,
  });

  KartDriver copyWith({
    int? id,
    String? name,
  }) {
    return KartDriver(
      id: id ?? this.id,
      name: name ?? this.name,
    );
  }

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'id': id});
    result.addAll({'name': name});

    return result;
  }

  factory KartDriver.fromMap(Map<String, dynamic> map) {
    return KartDriver(
      id: map['id']?.toInt() ?? 0,
      name: map['name'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory KartDriver.fromJson(String source) =>
      KartDriver.fromMap(json.decode(source));

  @override
  String toString() => 'KartDriver(id: $id, name: $name)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is KartDriver && other.id == id && other.name == name;
  }

  @override
  int get hashCode => id.hashCode ^ name.hashCode;
}
