import 'package:flutter/material.dart';
import 'package:pac4/Pages/Game/Util/Classes.dart';
import 'package:pac4/Pages/Game/Util/MyCard.dart';

class GameCard extends StatelessWidget {
  final Region region;
  final Rarity rarity;
  final String name;
  final String description;
  final Attributes atributtes;
  final List<Powers>? powers;

  const GameCard({
    Key? key,
    required this.region,
    required this.rarity,
    required this.name,
    required this.description,
    required this.atributtes,
    this.powers,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Draggable(
      feedback: Material(
        color: Colors.transparent,
        child: GameCardModel(),
      ),
      child: GameCardModel(),
      data: "aa",
    );
  }
}

class GameCardModel extends StatelessWidget {
  const GameCardModel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MyCard(
      child: Stack(
        children: [
          GameCardBackground(),
          GameCardContent(),
        ],
      ),
    );
  }
}

class GameCardBackground extends StatelessWidget {
  const GameCardBackground({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red, //FIXME: Parametrizar
      child: Padding(
        padding: EdgeInsets.all(2),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(5),
          child: Image.asset(
            'assets/images/teste_img.png', //FIXME: Parametrizar
            height: double.infinity,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}

class GameCardContent extends StatelessWidget {
  const GameCardContent({Key? key}) : super(key: key);

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
              AttributesModel(Attributes(-10, -10, -20, -10)),
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
                  height: 18,
                  width: 18,
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
                        'assets/images/icon-all.png', //FIXME: Parametrizar
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
            fontWeight: FontWeight.w900,
            foreground: Paint()
              ..style = PaintingStyle.stroke
              ..strokeWidth = 1.4
              ..color = Colors.grey[200]!,
          ),
        ),
        Text(
          text,
          style: TextStyle(
            fontWeight: FontWeight.w900,
          ),
        ),
      ],
    );
  }
}
