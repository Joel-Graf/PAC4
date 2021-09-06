import 'package:flutter/material.dart';
import 'package:pac4/Pages/Game/Card/CardData.dart';
import 'package:pac4/Pages/Game/Card/CardModel.dart';
import 'package:pac4/Pages/Game/Tile/EmpetyTile.dart';
import 'package:pac4/Pages/Game/Util/Decks/Noxus.dart';
import 'package:provider/provider.dart';

class EnemyCard extends StatefulWidget {
  const EnemyCard(this.cardData, {Key? key}) : super(key: key);

  final CardData? cardData;

  @override
  _EnemyCardState createState() => _EnemyCardState();
}

class _EnemyCardState extends State<EnemyCard> with ChangeNotifier {
  @override
  Widget build(BuildContext context) {
    return widget.cardData != null
        ? Draggable<CardModel>(
            child: CardModel(
              cardData: widget.cardData!,
            ),
            feedback: Material(
              color: Colors.transparent,
              child: CardModel(
                cardData: widget.cardData!,
              ),
            ),
            childWhenDragging: EmpetyTile(),
            data: CardModel(
              cardData: widget.cardData!,
            ),
            onDragCompleted: () {
              Provider.of<EnemyCards>(context, listen: false)
                  .removeFromEnemyHand(widget.cardData!);
              notifyListeners();
            },
          )
        : EmpetyTile();
  }
}
