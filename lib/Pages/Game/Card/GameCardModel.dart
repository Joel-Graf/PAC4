import 'package:pac4/Pages/Game/Card/GameCardClass.dart';
import 'package:flutter/material.dart';
import 'package:pac4/Pages/Game/Util/MyCard.dart';

class GameCardModel extends StatelessWidget {
  final GameCardClass cardClass;
  final Team team; //FIXME:

  const GameCardModel({
    Key? key,
    required this.cardClass,
    required this.team,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MyCard(
      child: Stack(
        children: [
          GameCardBackground(
            image: '${Regions[cardClass.region]}/${cardClass.name}',
            team: team,
          ),
          GameCardContent(
            cardClass.atributtes,
            cardClass.region,
          ),
        ],
      ),
    );
  }
}

class GameCardBackground extends StatelessWidget {
  final String image;
  final Team team;

  const GameCardBackground({
    Key? key,
    required this.image,
    required this.team,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: team == Team.PLAYER ? Colors.blue : Colors.red,
      child: Padding(
        padding: EdgeInsets.all(4),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(5),
          child: Image.asset(
            'assets/images/cards/$image.png',
            height: double.infinity,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}

class GameCardContent extends StatelessWidget {
  final Attributes attributes;
  final Region region;

  const GameCardContent(
    this.attributes,
    this.region, {
    Key? key,
  }) : super(key: key);

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
              AttributesModel(attributes),
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
                        'assets/images/regions/${Regions[region]}.png',
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
              ..strokeWidth = 3.4
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
