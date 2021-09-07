import 'package:flutter/cupertino.dart';
import 'package:pac4/Pages/Game/Util/Classes.dart';
import 'package:pac4/Pages/Game/Util/Enums.dart';
import 'package:pac4/Pages/Game/Widgets/BoardTile/BoardTileModel.dart';
import 'package:pac4/Pages/Game/Widgets/Card/GameCardModel.dart';

class BoardController with ChangeNotifier {
  final List<BoardTileModel> _boardTiles = [
    BoardTileModel(Point(0, 0), null), // 0
    BoardTileModel(Point(1, 0), null), // 1
    BoardTileModel(Point(2, 0), null), // 2
    BoardTileModel(Point(3, 0), null), // 3
    BoardTileModel(Point(0, 1), null), // 4
    BoardTileModel(Point(1, 1), null), // 5
    BoardTileModel(Point(2, 1), null), // 6
    BoardTileModel(Point(3, 1), null), // 7
    BoardTileModel(Point(0, 2), null), // 8
    BoardTileModel(Point(1, 2), null), // 9
    BoardTileModel(Point(2, 2), null), // 10
    BoardTileModel(Point(3, 2), null), // 11
    BoardTileModel(Point(0, 3), null), // 12
    BoardTileModel(Point(1, 3), null), // 13
    BoardTileModel(Point(2, 3), null), // 14
    BoardTileModel(Point(3, 3), null), // 15
  ];

  List<BoardTileModel> get boardTiles => [..._boardTiles];

  void onCardPlay(BoardTileModel playedData) {
    _updateBoardTile(playedData);
    final List<Point> neighbours = playedData.point.getNeighbours();
    neighbours.forEach((point) {
      final BoardTileModel data = BoardTileModel(point, _getCardData(point));
      if (data.cardModel != null &&
          _isOppositeTeam(playedData.cardModel!, data.cardModel!) &&
          _hasHigherAttributes(playedData, data)) {
        data.cardModel!.flip();
        _updateBoardTile(data);
      }
    });
    notifyListeners();
  }

  void _updateBoardTile(BoardTileModel data) {
    final index = _getIndex(data.point);
    _boardTiles[index] = BoardTileModel(data.point, data.cardModel);
  }

  GameCardModel? _getCardData(Point point) {
    final index = _getIndex(point);
    return _boardTiles[index].cardModel;
  }

  int _getIndex(Point point) {
    return point.x + point.y * 4;
  }

  bool _isOppositeTeam(GameCardModel playedData, GameCardModel neighbourData) {
    return playedData.team != neighbourData.team;
  }

  bool _hasHigherAttributes(
      BoardTileModel playedData, BoardTileModel neighbourData) {
    final Direction neighbourDirection =
        _getDirection(playedData.point, neighbourData.point);
    final int playedValue =
        playedData.cardModel!.atributtes.values[neighbourDirection]!;

    final Direction playerDirection = _getOpposite(neighbourDirection);
    final int neighbourValue =
        neighbourData.cardModel!.atributtes.values[playerDirection]!;

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
