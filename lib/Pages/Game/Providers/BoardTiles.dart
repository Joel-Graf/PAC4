import 'package:flutter/cupertino.dart';
import 'package:pac4/Pages/Game/Widgets/Board.dart';
import 'package:pac4/Pages/Game/Widgets/Card/CardData.dart';
import 'package:pac4/Pages/Game/Widgets/Tile/BoardTileData.dart';

class BoardTiles with ChangeNotifier {
  final List<BoardTileData> _boardTiles = [
    BoardTileData(Point(0, 0), null), // 0
    BoardTileData(Point(1, 0), null), // 1
    BoardTileData(Point(2, 0), null), // 2
    BoardTileData(Point(3, 0), null), // 3
    BoardTileData(Point(0, 1), null), // 4
    BoardTileData(Point(1, 1), null), // 5
    BoardTileData(Point(2, 1), null), // 6
    BoardTileData(Point(3, 1), null), // 7
    BoardTileData(Point(0, 2), null), // 8
    BoardTileData(Point(1, 2), null), // 9
    BoardTileData(Point(2, 2), null), // 10
    BoardTileData(Point(3, 2), null), // 11
    BoardTileData(Point(0, 3), null), // 12
    BoardTileData(Point(1, 3), null), // 13
    BoardTileData(Point(2, 3), null), // 14
    BoardTileData(Point(3, 3), null), // 15
  ]; // TODO: Desse modo ele remota o tile inteiro, as vezes só é necessário pintar uma carta

  List<BoardTileData> get boardTiles => [..._boardTiles];

  void onCardPlay(BoardTileData playedData) {
    _updateBoardTile(playedData);
    final List<Point> neighbours = playedData.point.getNeighbours();
    neighbours.forEach((point) {
      final BoardTileData data = BoardTileData(point, _getCardData(point));
      if (data.cardData != null &&
          _isOppositeTeam(playedData.cardData!, data.cardData!) &&
          _hasHigherAttributes(playedData, data)) {
        final newData = BoardTileData(data.point, data.cardData!.getFlipped());
        _updateBoardTile(newData);
      }
    });
    notifyListeners();
  }

  void _updateBoardTile(BoardTileData data) {
    final index = _getIndex(data.point);
    _boardTiles[index] = BoardTileData(data.point, data.cardData);
  }

  CardData? _getCardData(Point point) {
    final index = _getIndex(point);
    return _boardTiles[index].cardData;
  }

  int _getIndex(Point point) {
    return point.x + point.y * 4;
  }

  bool _isOppositeTeam(CardData playedData, CardData neighbourData) {
    return playedData.team != neighbourData.team;
  }

  bool _hasHigherAttributes(
      BoardTileData playedData, BoardTileData neighbourData) {
    final Direction neighbourDirection =
        _getDirection(playedData.point, neighbourData.point);
    final int playedValue =
        playedData.cardData!.atributtes.values[neighbourDirection]!;

    final Direction playerDirection = _getOpposite(neighbourDirection);
    final int neighbourValue =
        neighbourData.cardData!.atributtes.values[playerDirection]!;

    return playedValue > neighbourValue;
  }

  Direction _getOpposite(Direction dir) {
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

  Direction _getDirection(Point reference, Point relative) {
    if (reference.y < relative.y) {
      return Direction.TOP;
    } else if (reference.x < relative.x) {
      return Direction.RIGHT;
    } else if (reference.y > relative.y) {
      return Direction.BOTTOM;
    } else {
      return Direction.LEFT;
    }
  }
}
