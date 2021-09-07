import 'package:flutter/material.dart';
import 'package:pac4/Pages/Game/Widgets/Card/GameCardModel.dart';

class GameController with ChangeNotifier {
  Team _turn = Team.PLAYER;
  bool _isGameFinished = false;
  Team? _winner;

  Team get turn => _turn;

  void changeTurn() {
    _turn = _turn == Team.PLAYER ? Team.ENEMY : Team.PLAYER;
    notifyListeners();
  }

  void finishGame(Team winner) {
    _isGameFinished = true;
    _winner = winner;
    notifyListeners();
  }
}
