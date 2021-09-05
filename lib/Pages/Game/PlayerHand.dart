import 'package:flutter/material.dart';
import 'package:pac4/Pages/Game/Card/GameCardClass.dart';
import 'package:pac4/Pages/Game/Card/GameCard.dart';
import 'package:pac4/Pages/Game/Tile/EmpetyTile.dart';
import 'package:pac4/Pages/Game/Util/Decks/Demacia.dart';

class HandPlayer extends StatefulWidget {
  const HandPlayer({Key? key}) : super(key: key);

  @override
  _HandPlayerState createState() => _HandPlayerState();
}

class _HandPlayerState extends State<HandPlayer> {
  var playerHand = deckDemacia;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.amber[300]!.withOpacity(0.8),
      child: Column(
        children: [
          Container(
            width: double.infinity,
            child: Wrap(
              alignment: WrapAlignment.spaceEvenly,
              children: playerHand
                  .map((gameClass) =>
                      gameClass != null ? GameCard(gameClass) : EmpetyTile())
                  .toList(),
            ),
          ),
        ],
      ),
    );
  }
}
