import 'package:pac4/Pages/Game/Util/Classes.dart';
import 'package:pac4/Pages/Game/Widgets/Hands/Card/GameCardModel.dart';

class BoardTileModel {
  BoardTileModel(this.point, this.cardModel);

  final Point point;
  final GameCardModel? cardModel;
}
