import 'package:flutter/cupertino.dart';
import 'package:pac4/Pages/Game/Util/Classes.dart';
import 'package:pac4/Pages/Game/Util/Constants.dart';
import 'package:pac4/Pages/Game/Widgets/Board/BoardTile/BoardTileModel.dart';
import 'package:pac4/Pages/Game/Widgets/Hand/Card/GameCardModel.dart';

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

  void onCardPlay(BoardTileModel played) {
    _updateBoardTile(played);
    _tryToFlipNeighbours(played);
    notifyListeners();
  }

  void _updateBoardTile(BoardTileModel data) {
    final index = _getIndex(data.point);
    _boardTiles[index] = BoardTileModel(data.point, data.cardModel);
  }

  void _tryToFlipNeighbours(played) {
    final List<BoardTileModel> neighbours =
        _getNeighbours(played.neighboursPoints);
    neighbours.forEach((neighbour) {
      if (_isFlippable(played, neighbour)) _flip(neighbour);
    });
  }

  List<BoardTileModel> _getNeighbours(List<Point> points) {
    return [...points.map((point) => _getNeighbour(point))];
  }

  bool _isFlippable(BoardTileModel played, BoardTileModel neighbour) {
    // CHECK for NULL first!
    return _hasCard(neighbour) &&
        _isOppositeTeam(played, neighbour) &&
        _hasHigherAttributes(played, neighbour);
  }

  void _flip(BoardTileModel model) {
    model.cardModel!.flip();
    _updateBoardTile(model);
  }

  BoardTileModel _getNeighbour(Point point) {
    final index = _getIndex(point);
    return BoardTileModel(point, _boardTiles[index].cardModel);
  }

  int _getIndex(Point point) {
    return point.x + point.y * 4;
  }

  bool _hasCard(BoardTileModel model) {
    return model.cardModel != null;
  }

  bool _isOppositeTeam(BoardTileModel played, BoardTileModel neighbour) {
    return played.cardModel!.team != neighbour.cardModel!.team;
  }

  bool _hasHigherAttributes(BoardTileModel played, BoardTileModel neighbour) {
    final Direction neighbourDirection =
        _getDirection(played.point, neighbour.point);
    final int playedValue =
        played.cardModel!.atributtes.values[neighbourDirection]!;

    final Direction playerDirection = _getOpposite(neighbourDirection);
    final int neighbourValue =
        neighbour.cardModel!.atributtes.values[playerDirection]!;

    return playedValue > neighbourValue;
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
}
