import 'package:flutter/material.dart';
import 'package:pac4/Pages/Game/Providers/GameController.dart';
import 'package:pac4/Pages/Game/Providers/PlayerCards.dart';
import 'package:pac4/Pages/Game/Widgets/Card/GameCardModel.dart';
import 'package:pac4/Pages/Game/Widgets/Card/GameCardView.dart';
import 'package:pac4/Pages/Game/Util/EmpetyTile.dart';
import 'package:provider/provider.dart';

class PlayerCard extends StatefulWidget {
  const PlayerCard(this.model, {Key? key}) : super(key: key);

  final GameCardModel? model;

  @override
  _PlayerCardState createState() => _PlayerCardState();
}

class _PlayerCardState extends State<PlayerCard> with ChangeNotifier {
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
              Provider.of<PlayerCards>(context, listen: false)
                  .removeFromPlayerHand(widget.model!);
              Provider.of<GameController>(context, listen: false).changeTurn();
              notifyListeners();
            },
          )
        : EmpetyTile();
  }
}
