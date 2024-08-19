import 'package:criar_challenge/repositories/race_repository_mock_imp.dart';
import 'package:criar_challenge/shared/models/kart_driver_race.dart';
import 'package:flutter/material.dart';

class HomeController extends ChangeNotifier {
  List<KartDriverRace> raceDriversData = [];

  List<bool> buttonsLoader = [false, false, false];

  changeButtonLoader(int index) {
    buttonsLoader[index] = !buttonsLoader[index];
    notifyListeners();
  }

  fetchKartRaceInfo() {
    final RaceRepositoryMockImp raceRepository = RaceRepositoryMockImp();

    List<KartDriverRace> dataResult = raceRepository.getRaceLog();

    raceDriversData.addAll(dataResult);
    notifyListeners();
  }
}
