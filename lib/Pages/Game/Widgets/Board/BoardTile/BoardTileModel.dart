import 'package:pac4/Pages/Game/Util/Classes.dart';
import 'package:pac4/Pages/Game/Widgets/Hand/Card/GameCardModel.dart';

class BoardTileModel {
  BoardTileModel(this.point, this.cardModel);

  final Point point;
  final GameCardModel? cardModel;

  List<Point> get neighboursPoints => point.getNeighbours();
}
