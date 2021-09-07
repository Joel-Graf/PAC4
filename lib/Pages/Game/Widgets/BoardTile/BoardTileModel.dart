import 'package:pac4/Pages/Game/Widgets/Board.dart';
import 'package:pac4/Pages/Game/Widgets/Card/GameCardModel.dart';

class BoardTileModel {
  BoardTileModel(this.point, this.cardModel);

  final Point point;
  final GameCardModel? cardModel;
}
