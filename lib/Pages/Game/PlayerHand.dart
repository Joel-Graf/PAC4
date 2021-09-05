import 'package:flutter/material.dart';
import 'package:pac4/Pages/Game/Card/GameCard.dart';
import 'package:pac4/Pages/Game/Util/Decks/Demacia.dart';
import 'package:provider/provider.dart';

class HandPlayer extends StatelessWidget {
  const HandPlayer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<PlayerCards>(context);
    final playerHand = provider.deckDemacia;

    return Container(
      color: Colors.amber[300]!.withOpacity(0.8),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: double.infinity,
            child: Wrap(
              alignment: WrapAlignment.spaceEvenly,
              children:
                  playerHand.map((gameClass) => GameCard(gameClass)).toList(),
            ),
          ),
        ],
      ),
    );
  }
}
