import 'package:criar_challenge/shared/models/kart_driver_race.dart';

abstract class RaceRepository {
  List<KartDriverRace> getRaceLog();
}
