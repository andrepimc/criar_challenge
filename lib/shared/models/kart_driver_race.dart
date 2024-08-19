import 'dart:convert';

import 'package:criar_challenge/shared/models/kart_driver.dart';

class KartDriverRace {
  final KartDriver driver; //PILOTO
  final int finalPosition; //POSIÇÃO FINAL
  final int numberOfLaps; //Nª DE VOLTAS COMPLETADAS
  final String totalTime; //TEMPO TOTAL DE PROVA
  final String bestLapTime; //TEMPO DA MELHOR VOLTA
  final double averageSpeed; //VEL. MÉDIA
  final String timeAfterWinner; //TEMPO A MAIS QUE O VENCEDOR
  KartDriverRace({
    required this.driver,
    required this.finalPosition,
    required this.numberOfLaps,
    required this.totalTime,
    required this.bestLapTime,
    required this.averageSpeed,
    required this.timeAfterWinner,
  });

  KartDriverRace copyWith({
    KartDriver? driver,
    int? finalPosition,
    int? numberOfLaps,
    String? totalTime,
    String? bestLapTime,
    double? averageSpeed,
    String? timeAfterWinner,
  }) {
    return KartDriverRace(
      driver: driver ?? this.driver,
      finalPosition: finalPosition ?? this.finalPosition,
      numberOfLaps: numberOfLaps ?? this.numberOfLaps,
      totalTime: totalTime ?? this.totalTime,
      bestLapTime: bestLapTime ?? this.bestLapTime,
      averageSpeed: averageSpeed ?? this.averageSpeed,
      timeAfterWinner: timeAfterWinner ?? this.timeAfterWinner,
    );
  }

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'driver': driver.toMap()});
    result.addAll({'finalPosition': finalPosition});
    result.addAll({'numberOfLaps': numberOfLaps});
    result.addAll({'totalTime': totalTime});
    result.addAll({'bestLapTime': bestLapTime});
    result.addAll({'averageSpeed': averageSpeed});
    result.addAll({'timeAfterWinner': timeAfterWinner});

    return result;
  }

  factory KartDriverRace.fromMap(Map<String, dynamic> map) {
    return KartDriverRace(
      driver: KartDriver.fromMap(map['driver']),
      finalPosition: map['finalPosition']?.toInt() ?? 0,
      numberOfLaps: map['numberOfLaps']?.toInt() ?? 0,
      totalTime: map['totalTime'] ?? '',
      bestLapTime: map['bestLapTime'] ?? '',
      averageSpeed: map['averageSpeed']?.toDouble() ?? 0.0,
      timeAfterWinner: map['timeAfterWinner'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory KartDriverRace.fromJson(String source) =>
      KartDriverRace.fromMap(json.decode(source));

  @override
  String toString() {
    return 'KartDriverRace(driver: $driver, finalPosition: $finalPosition, numberOfLaps: $numberOfLaps, totalTime: $totalTime, bestLapTime: $bestLapTime, averageSpeed: $averageSpeed, timeAfterWinner: $timeAfterWinner)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is KartDriverRace &&
        other.driver == driver &&
        other.finalPosition == finalPosition &&
        other.numberOfLaps == numberOfLaps &&
        other.totalTime == totalTime &&
        other.bestLapTime == bestLapTime &&
        other.averageSpeed == averageSpeed &&
        other.timeAfterWinner == timeAfterWinner;
  }

  @override
  int get hashCode {
    return driver.hashCode ^
        finalPosition.hashCode ^
        numberOfLaps.hashCode ^
        totalTime.hashCode ^
        bestLapTime.hashCode ^
        averageSpeed.hashCode ^
        timeAfterWinner.hashCode;
  }
}
