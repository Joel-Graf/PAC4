import 'package:flutter/material.dart';
import 'package:pac4/Pages/Game/Util/Enums.dart';

class GameController with ChangeNotifier {
  Team _turn = Team.PLAYER;

  Team get turn => _turn;

  void changeTurn() {
    _turn = _turn == Team.PLAYER ? Team.ENEMY : Team.PLAYER;
    notifyListeners();
  }

  void finishGame(Team winner) {
    notifyListeners();
  }
}
