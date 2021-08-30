import 'package:flutter/material.dart';
import 'package:pac4/Pages/Game/Board/Board.dart';
import 'package:pac4/Pages/Game/Hand/HandEnemy.dart';
import 'package:pac4/Pages/Game/Hand/HandPlayer.dart';

class GamePage extends StatelessWidget {
  const GamePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          color: Colors.black,
          child: Column(
            children: <Widget>[
              Flexible(
                flex: 2,
                child: HandEnemy(),
              ),
              Expanded(
                flex: 8,
                child: Board(),
              ),
              Flexible(
                flex: 4,
                child: HandPlayer(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
