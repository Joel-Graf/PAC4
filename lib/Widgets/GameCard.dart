import 'package:flutter/material.dart';

enum Region { DEMACIA, NOXUS }

enum Rarity { COMMON, RARE, EPIC, LEGENDARY }

class Atributtes {
  int top;
  int rigth;
  int bottom;
  int left;

  Atributtes(this.top, this.rigth, this.bottom, this.left);
}

class Powers {
  String name;
  String descrition;
  void Function() execution;

  Powers(this.name, this.descrition, this.execution);
}

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
      height: 100,
      width: 100,
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
      height: 100,
      width: 100,
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
