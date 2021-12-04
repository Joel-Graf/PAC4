import 'package:flutter/material.dart';
import 'package:pac4/Pages/Game/Providers/GameController.dart';
import 'package:pac4/Pages/Game/Util/Constants.dart';
import 'package:pac4/Pages/Game/Widgets/Board/Board.dart';
import 'package:pac4/Pages/Game/Widgets/Finished/FinishedView.dart';
import 'package:pac4/Pages/Game/Widgets/Hand/Hand.dart';
import 'package:provider/provider.dart';

class GamePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          color: Colors.black,
          child: Provider.of<GameController>(context, listen: true)
                  .isGameFinished
              ? Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Expanded(
                      child: FinishedView(
                          Provider.of<GameController>(context, listen: false)
                              .winner),
                    ),
                  ],
                )
              : Column(
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
