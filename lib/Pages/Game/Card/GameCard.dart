import 'package:flutter/material.dart';
import 'package:pac4/Pages/Game/Card/GameCardData.dart';
import 'package:pac4/Pages/Game/Card/GameCardModel.dart';
import 'package:pac4/Pages/Game/Tile/EmpetyTile.dart';
import 'package:pac4/Pages/Game/Util/Decks/Demacia.dart';
import 'package:provider/provider.dart';

class GameCard extends StatefulWidget {
  const GameCard(this.cardData, {Key? key}) : super(key: key);

  final GameCardData? cardData;

  @override
  _GameCardState createState() => _GameCardState();
}

class _GameCardState extends State<GameCard> with ChangeNotifier {
  @override
  Widget build(BuildContext context) {
    return widget.cardData != null
        ? Draggable<GameCardModel>(
            child: GameCardModel(
              cardData: widget.cardData!,
            ),
            feedback: Material(
              color: Colors.transparent,
              child: GameCardModel(
                cardData: widget.cardData!,
              ),
            ),
            childWhenDragging: EmpetyTile(),
            data: GameCardModel(
              cardData: widget.cardData!,
            ),
            onDragCompleted: () {
              Provider.of<PlayerCards>(context, listen: false)
                  .removeDemacia(widget.cardData!);
              notifyListeners();
            },
          )
        : EmpetyTile();
  }
}
