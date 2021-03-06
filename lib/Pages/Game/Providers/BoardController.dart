import 'package:flutter/cupertino.dart';
import 'package:pac4/Pages/Game/Util/Classes.dart';
import 'package:pac4/Pages/Game/Util/Constants.dart';
import 'package:pac4/Pages/Game/Widgets/Board/BoardTile/BoardTileModel.dart';

class BoardController with ChangeNotifier {
  final List<BoardTileModel> _boardTiles = [
    BoardTileModel(Point(0, 0)), // 0
    BoardTileModel(Point(1, 0)), // 1
    BoardTileModel(Point(2, 0)), // 2
    BoardTileModel(Point(3, 0)), // 3
    BoardTileModel(Point(0, 1)), // 4
    BoardTileModel(Point(1, 1)), // 5
    BoardTileModel(Point(2, 1)), // 6
    BoardTileModel(Point(3, 1)), // 7
    BoardTileModel(Point(0, 2)), // 8
    BoardTileModel(Point(1, 2)), // 9
    BoardTileModel(Point(2, 2)), // 10
    BoardTileModel(Point(3, 2)), // 11
    BoardTileModel(Point(0, 3)), // 12
    BoardTileModel(Point(1, 3)), // 13
    BoardTileModel(Point(2, 3)), // 14
    BoardTileModel(Point(3, 3)), // 15
  ];

  List<BoardTileModel> get boardTiles => [..._boardTiles];

  bool isBoardFull() {
    bool isBoardFull = true;
    for (var boardTileModel in _boardTiles) {
      if (!boardTileModel.hasCard) {
        isBoardFull = false;
        break;
      }
    }
    return isBoardFull;
  }

  int calculatePlayerScore() {
    int score = 0;
    if (isBoardFull()) {
      for (var boardTileModel in _boardTiles) {
        if (boardTileModel.cardModel!.team.isPlayer) {
          score++;
        }
      }
    }
    return score;
  }

  void onCardPlay(BoardTileModel played) {
    _updateBoardTile(played);
    _tryToFlipNeighbours(played);
    notifyListeners();
  }

  void _updateBoardTile(BoardTileModel data) {
    _boardTiles[data.index] = data;
  }

  void _tryToFlipNeighbours(BoardTileModel played) {
    final List<BoardTileModel> neighbours = _getNeighbours(played);
    neighbours.forEach((neighbour) {
      if (neighbour.hasCard && _isFlippable(played, neighbour))
        _flip(neighbour);
    });
  }

  List<BoardTileModel> _getNeighbours(BoardTileModel model) {
    final List<int> indexes = model.neighboursIndexes;
    return [...indexes.map((index) => _boardTiles[index])];
  }

  bool _isFlippable(BoardTileModel played, BoardTileModel neighbour) {
    return _isOppositeTeam(played, neighbour) &&
        _hasHigherAttributes(played, neighbour);
  }

  void _flip(BoardTileModel model) {
    model.cardModel!.flip();
    _updateBoardTile(model);
  }

  bool _isOppositeTeam(BoardTileModel played, BoardTileModel neighbour) {
    return played.cardModel!.team != neighbour.cardModel!.team;
  }

  bool _hasHigherAttributes(BoardTileModel played, BoardTileModel neighbour) {
    final Direction attackDirection =
        played.point.getDirectionTo(neighbour.point);
    final int attackValue =
        played.cardModel!.atributtes.values[attackDirection]!;

    final Direction deffenseDirection = attackDirection.opposite;
    final int deffenseValue =
        neighbour.cardModel!.atributtes.values[deffenseDirection]!;

    return attackValue > deffenseValue;
  }
}
