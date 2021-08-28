import 'package:flutter/material.dart';
import 'package:pac4/Pages/Game/Util/MyCard.dart';

class Tile extends StatefulWidget {
  const Tile({Key? key}) : super(key: key);

  @override
  _TileState createState() => _TileState();
}

class _TileState extends State<Tile> {
  bool accepted = true;

  @override
  Widget build(BuildContext context) {
    return MyCard(
      child: DragTarget(
        builder: (context, List<Object?> candidateData, rejectedData) {
          return accepted
              ? Container(color: Colors.blue)
              : Container(color: Colors.red);
        },
        onWillAccept: (data) {
          return true;
        },
        onAccept: (data) {
          accepted = !accepted;
        },
      ),
    );
  }
}
