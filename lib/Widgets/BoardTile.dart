import 'package:flutter/material.dart';

class BoardTile extends StatefulWidget {
  const BoardTile({Key? key}) : super(key: key);

  @override
  _BoardTileState createState() => _BoardTileState();
}

class _BoardTileState extends State<BoardTile> {
  bool accepted = false;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      width: 100,
      child: DragTarget(
        builder: (context, List<Object?> candidateData, rejectedData) {
          return accepted ? EmpetyTile() : ColoredBox(color: Colors.white);
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

class EmpetyTile extends StatelessWidget {
  const EmpetyTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      borderOnForeground: true,
      color: Colors.grey[400],
      child: Center(
        child: Stack(
          children: [
            // TODO: Background
          ],
        ),
      ),
    );
  }
}
