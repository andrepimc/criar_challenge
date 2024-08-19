import 'package:criar_challenge/repositories/race_repository.dart';
import 'package:criar_challenge/shared/models/kart_driver.dart';
import 'package:criar_challenge/shared/models/kart_driver_race.dart';

class RaceRepositoryMockImp implements RaceRepository {
  @override
  List<KartDriverRace> getRaceLog() {
    final List<KartDriverRace> kartRace = [
      KartDriverRace(
          driver: KartDriver(id: 038, name: "F.MASSA"),
          finalPosition: 1,
          numberOfLaps: 4,
          totalTime: "04:11.578",
          bestLapTime: "01:02.769",
          averageSpeed: 44.246,
          timeAfterWinner: "-"),
      KartDriverRace(
          driver: KartDriver(id: 002, name: "K.RAIKKONEN"),
          finalPosition: 2,
          numberOfLaps: 4,
          totalTime: "04:15.153",
          bestLapTime: "01:03.076",
          averageSpeed: 43.627,
          timeAfterWinner: "00:03.575"),
      KartDriverRace(
          driver: KartDriver(id: 033, name: "R.BARRICHELLO"),
          finalPosition: 3,
          numberOfLaps: 4,
          totalTime: "04:16.080",
          bestLapTime: "01:03.716",
          averageSpeed: 43.468,
          timeAfterWinner: "00:04.502"),
      KartDriverRace(
          driver: KartDriver(id: 023, name: "M.WEBBER"),
          finalPosition: 4,
          numberOfLaps: 4,
          totalTime: "04:17.722",
          bestLapTime: "01:04.216",
          averageSpeed: 43.191,
          timeAfterWinner: "00:06.144"),
      KartDriverRace(
          driver: KartDriver(id: 015, name: "F.ALONSO"),
          finalPosition: 5,
          numberOfLaps: 4,
          totalTime: "04:54.221",
          bestLapTime: "01:07.011",
          averageSpeed: 38.066,
          timeAfterWinner: "00:42.643"),
      KartDriverRace(
          driver: KartDriver(id: 011, name: "S.VETTEL"),
          finalPosition: 6,
          numberOfLaps: 3,
          totalTime: "06:27.276",
          bestLapTime: "01:18.097",
          averageSpeed: 25.746,
          timeAfterWinner: "NCP"),
    ];

    return kartRace;
  }
}
