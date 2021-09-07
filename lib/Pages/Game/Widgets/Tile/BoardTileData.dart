import 'package:pac4/Pages/Game/Widgets/Board.dart';
import 'package:pac4/Pages/Game/Widgets/Card/CardData.dart';

class BoardTileData {
  BoardTileData(this.point, this.cardData);

  final Point point;
  final CardData? cardData;
}
