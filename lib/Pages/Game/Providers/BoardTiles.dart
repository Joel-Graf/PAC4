import 'package:flutter/cupertino.dart';
import 'package:pac4/Pages/Game/Widgets/Board.dart';
import 'package:pac4/Pages/Game/Widgets/Tile/BoardTile.dart';

class BoardTiles with ChangeNotifier {
  final List<BoardTile> _boardTiles = [
    BoardTile(Position(0, 0)),
    BoardTile(Position(1, 0)),
    BoardTile(Position(2, 0)),
    BoardTile(Position(3, 0)),
    BoardTile(Position(0, 1)),
    BoardTile(Position(1, 1)),
    BoardTile(Position(2, 1)),
    BoardTile(Position(3, 1)),
    BoardTile(Position(0, 2)),
    BoardTile(Position(1, 2)),
    BoardTile(Position(2, 2)),
    BoardTile(Position(3, 2)),
    BoardTile(Position(0, 3)),
    BoardTile(Position(1, 3)),
    BoardTile(Position(2, 3)),
    BoardTile(Position(3, 3)),
  ];

  final teste = [1];

  void onCardPlay(Position position) {
    // 1- Pega a lista de vizinhos (Já filtra posições inválidas)
    // 2- Acessa os vizinhos
    // 3- Checa se existe carta
    // 4- Checa valores
    // 5- Vira ou não a carta
    final validNeighbours = position.getNeighboursPos();
    print('Col:${position.col} || Row: ${position.row}');
    validNeighbours.forEach((position) {
      print('Col:${position.col} || Row: ${position.row}');
    });
  }

  List<BoardTile> get boardTiles => [..._boardTiles];

  // void removeFromEnemyHand(CardData cardData) {
  //   final index = _enemyCards.indexOf(cardData);
  //   _enemyCards[index] = null;
  //   notifyListeners();
  // }

}
