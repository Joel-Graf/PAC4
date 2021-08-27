import 'package:flutter/material.dart';
import 'BoardTile.dart';

class Board extends StatelessWidget {
  const Board({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: Colors.grey[200],
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                BoardTile(),
                BoardTile(),
                BoardTile(),
                BoardTile(),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                BoardTile(),
                BoardTile(),
                BoardTile(),
                BoardTile(),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                BoardTile(),
                BoardTile(),
                BoardTile(),
                BoardTile(),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                BoardTile(),
                BoardTile(),
                BoardTile(),
                BoardTile(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
