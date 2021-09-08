import 'package:flutter/material.dart';
import 'package:pac4/Pages/Game/Providers/GameController.dart';
import 'package:pac4/Pages/Game/Providers/HandController.dart';
import 'package:pac4/Pages/Game/Util/Constants.dart';
import 'package:pac4/Pages/Game/Util/EmpetyTile.dart';
import 'package:pac4/Pages/Game/Widgets/Hand/Card/GameCardModel.dart';
import 'package:pac4/Pages/Game/Widgets/Hand/Card/GameCardView.dart';
import 'package:provider/provider.dart';

class GameCard extends StatefulWidget {
  const GameCard({this.model});

  final GameCardModel? model;

  bool get hasCard => model != null;

  @override
  _GameCardState createState() => _GameCardState();
}

class _GameCardState extends State<GameCard> with ChangeNotifier {
  @override
  Widget build(BuildContext context) {
    return widget.hasCard
        ? Draggable<GameCardModel>(
            child: GameCardView(
              model: widget.model!,
            ),
            feedback: Material(
              color: Colors.transparent,
              child: GameCardView(
                model: widget.model!,
              ),
            ),
            childWhenDragging: EmpetyTile(),
            data: widget.model!,
            onDragCompleted: () {
              widget.model!.team == Team.PLAYER
                  ? Provider.of<PlayerController>(context, listen: false)
                      .remove(widget.model!)
                  : Provider.of<EnemyController>(context, listen: false)
                      .remove(widget.model!);
              Provider.of<GameController>(context, listen: false).changeTurn();
              notifyListeners();
            },
          )
        : EmpetyTile();
  }
}
