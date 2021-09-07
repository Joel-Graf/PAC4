import 'package:flutter/cupertino.dart';
import 'package:pac4/Pages/Game/Widgets/Board.dart';
import 'package:pac4/Pages/Game/Widgets/Card/CardData.dart';
import 'package:pac4/Pages/Game/Widgets/Tile/BoardTile.dart';

class BoardTiles with ChangeNotifier {
  final List<BoardTile> _boardTiles = [
    BoardTile(Position(0, 0), null), // 0
    BoardTile(Position(1, 0), null), // 1
    BoardTile(Position(2, 0), null), // 2
    BoardTile(Position(3, 0), null), // 3
    BoardTile(Position(0, 1), null), // 4
    BoardTile(Position(1, 1), null), // 5
    BoardTile(Position(2, 1), null), // 6
    BoardTile(Position(3, 1), null), // 7
    BoardTile(Position(0, 2), null), // 8
    BoardTile(Position(1, 2), null), // 9
    BoardTile(Position(2, 2), null), // 10
    BoardTile(Position(3, 2), null), // 11
    BoardTile(Position(0, 3), null), // 12
    BoardTile(Position(1, 3), null), // 13
    BoardTile(Position(2, 3), null), // 14
    BoardTile(Position(3, 3), null), // 15
  ];

  List<BoardTile> get boardTiles => [..._boardTiles];

  int getIndex(Position pos) {
    return pos.col + pos.row * 4;
  }

  Direction getOpposite(Direction dir) {
    switch (dir) {
      case Direction.TOP:
        return Direction.BOTTOM;
      case Direction.RIGHT:
        return Direction.LEFT;
      case Direction.BOTTOM:
        return Direction.TOP;
      case Direction.LEFT:
        return Direction.RIGHT;
    }
  }

  void onCardPlay(Position playedPosition, CardData playedCardData) {
    // Coloca carta no tabuleiro
    final playedCardIndex = getIndex(playedPosition);
    _boardTiles[playedCardIndex] = BoardTile(playedPosition, playedCardData);

    // Faz loop por todos vizinho válidos
    final neighbours = playedPosition.getNeighboursPos();
    neighbours.forEach((nDirection, nPosition) {
      // Pega dados de carta no tile
      var nIndex = getIndex(nPosition);
      var nCardData = _boardTiles[nIndex].cardData;

      // Tenta virar carta
      if (nCardData != null &&
          isOppositeTeam(playedCardData, nCardData) &&
          hasHigherAttributes(playedCardData, nCardData, nDirection)) {
        // Vira carta
        _boardTiles[nIndex] = BoardTile(nPosition, nCardData.getFlipped());
      }
    });
    notifyListeners();
  }

  bool isOppositeTeam(CardData playedCardData, CardData nCardData) {
    return playedCardData.team != nCardData.team;
  }

  bool hasHigherAttributes(
      CardData playedCardData, CardData nCardData, Direction nDirection) {
    return playedCardData.atributtes.values[nDirection]! >
        nCardData.atributtes.values[getOpposite(nDirection)]!;
  }
}
