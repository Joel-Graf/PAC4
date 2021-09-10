import 'package:flutter/material.dart';
import 'package:pac4/Pages/Game/Util/Constants.dart';
import 'package:pac4/Pages/Game/Widgets/Board/Board.dart';
import 'package:pac4/Pages/Game/Widgets/Hand/Hand.dart';

class GamePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          color: Colors.black,
          child: Column(
            children: <Widget>[
              Expanded(
                flex: 1,
                child: Hand(team: Team.ENEMY),
              ),
              Expanded(
                flex: 4,
                child: Board(),
              ),
              Expanded(
                flex: 2,
                child: Hand(team: Team.PLAYER),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
