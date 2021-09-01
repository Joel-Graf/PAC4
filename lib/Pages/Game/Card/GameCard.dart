import 'package:flutter/material.dart';
import 'package:pac4/Pages/Game/Tile/Tile.dart';
import 'package:pac4/Pages/Game/Util/Classes.dart';
import 'package:pac4/Pages/Game/Util/Widgets/MyCard.dart';

class GameCard extends StatelessWidget {
  final Team team;
  final String image;
  final Region region;
  final Rarity rarity;
  final String name;
  final String description;
  final Attributes atributtes;
  final List<Powers>? powers;

  const GameCard({
    Key? key,
    required this.team,
    required this.image,
    required this.region,
    required this.rarity,
    required this.name,
    required this.description,
    required this.atributtes,
    this.powers,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Draggable<GameCard>(
      feedback: Material(
        color: Colors.transparent,
        child: GameCardModel(this),
      ),
      child: GameCardModel(this),
      childWhenDragging: EmpetyTile(),
      data: this,
    );
  }
}

class GameCardModel extends StatelessWidget {
  final GameCard gameCard;

  const GameCardModel(this.gameCard, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MyCard(
      child: Stack(
        children: [
          GameCardBackground(gameCard),
          GameCardContent(gameCard),
        ],
      ),
    );
  }
}

class GameCardBackground extends StatelessWidget {
  final GameCard gameCard;

  const GameCardBackground(this.gameCard, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: gameCard.team == Team.PLAYER ? Colors.blue : Colors.red,
      child: Padding(
        padding: EdgeInsets.all(4),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(5),
          child: Image.asset(
            'assets/images/cards/${gameCard.image}.png',
            height: double.infinity,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}

class GameCardContent extends StatelessWidget {
  final GameCard gameCard;

  const GameCardContent(this.gameCard, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              AttributesModel(Attributes(1, 1, 1, 1)),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  bottom: 3,
                  right: 3,
                ),
                child: SizedBox(
                  height: 24,
                  width: 24,
                  child: ClipOval(
                    child: Container(
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.7),
                            blurRadius: 0.4,
                            offset: Offset(0, 0),
                          ),
                        ],
                      ),
                      child: Image.asset(
                        'assets/images/regions/${Regions[gameCard.region]}.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class AttributesModel extends StatelessWidget {
  final Attributes attributes;

  const AttributesModel(this.attributes, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        AttributeText(attributes.top.toString()),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            AttributeText(attributes.left.toString()),
            AttributeText(' '),
            AttributeText(attributes.rigth.toString())
          ],
        ),
        AttributeText(attributes.bottom.toString())
      ],
    );
  }
}

class AttributeText extends StatelessWidget {
  final String text;

  const AttributeText(this.text, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Text(
          text,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 12,
            foreground: Paint()
              ..style = PaintingStyle.stroke
              ..strokeWidth = 2.6
              ..color = Colors.black,
          ),
        ),
        Text(
          text,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 12,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
