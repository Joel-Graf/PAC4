import 'package:flutter/material.dart';
import 'package:pac4/Pages/Game/Providers/EnemyCards.dart';
import 'package:pac4/Pages/Game/Providers/GameController.dart';
import 'package:pac4/Pages/Game/Widgets/Card/GameCardModel.dart';
import 'package:pac4/Pages/Game/Widgets/Card/GameCardView.dart';
import 'package:pac4/Pages/Game/Util/EmpetyTile.dart';
import 'package:provider/provider.dart';

class EnemyCard extends StatefulWidget {
  const EnemyCard(this.model, {Key? key}) : super(key: key);

  final GameCardModel? model;

  @override
  _EnemyCardState createState() => _EnemyCardState();
}

class _EnemyCardState extends State<EnemyCard> with ChangeNotifier {
  @override
  Widget build(BuildContext context) {
    return widget.model != null
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
              Provider.of<EnemyCards>(context, listen: false)
                  .removeFromEnemyHand(widget.model!);
              Provider.of<GameController>(context, listen: false).changeTurn();
              notifyListeners();
            },
          )
        : EmpetyTile();
  }
}
