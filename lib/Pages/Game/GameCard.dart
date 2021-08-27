import 'package:flutter/material.dart';
import 'package:pac4/Util/Classes.dart';

class GameCard extends StatelessWidget {
  final Region region;
  final Rarity rarity;
  final String name;
  final String description;
  final Atributtes atributtes;
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
      feedback: GameCardFeedback(),
      child: GameCardChild(),
      data: "aa",
    );
  }
}

class GameCardChild extends StatelessWidget {
  const GameCardChild({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 76,
      width: 76,
      child: Card(
        color: Colors.blue[200],
        child: Center(
          child: Stack(
            children: [
              // GridView(), // FIXME:
              Image.asset('assets/images/logo.png'),
              Table(
                border: TableBorder.all(),
                children: <TableRow>[
                  TableRow(
                    children: <Widget>[
                      Text('data'),
                      Text('Melissa'),
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class GameCardFeedback extends StatelessWidget {
  const GameCardFeedback({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 90,
      width: 90,
      child: Card(
        color: Colors.blue[200],
        child: Center(
          child: Stack(
            children: [
              // GridView(), // FIXME:
              Image.asset('assets/images/logo.png'),
              Table(
                border: TableBorder.all(),
                children: <TableRow>[
                  TableRow(
                    children: <Widget>[
                      Text('data'),
                      Text('Melissa'),
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
