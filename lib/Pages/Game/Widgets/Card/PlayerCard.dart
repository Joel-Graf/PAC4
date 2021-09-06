import 'package:flutter/material.dart';
import 'package:pac4/Pages/Game/Providers/PlayerCards.dart';
import 'package:pac4/Pages/Game/Widgets/Card/CardData.dart';
import 'package:pac4/Pages/Game/Widgets/Card/CardModel.dart';
import 'package:pac4/Pages/Game/Widgets/Tile/EmpetyTile.dart';
import 'package:provider/provider.dart';

class PlayerCard extends StatefulWidget {
  const PlayerCard(this.cardData, {Key? key}) : super(key: key);

  final CardData? cardData;

  @override
  _PlayerCardState createState() => _PlayerCardState();
}

class _PlayerCardState extends State<PlayerCard> with ChangeNotifier {
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
              Provider.of<PlayerCards>(context, listen: false)
                  .removeFromPlayerHand(widget.cardData!);
              notifyListeners();
            },
          )
        : EmpetyTile();
  }
}
