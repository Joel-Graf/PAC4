import 'package:pac4/Pages/Game/Util/Classes.dart';
import 'package:pac4/Pages/Game/Util/Constants.dart';

class GameCardModel {
  GameCardModel({
    required this.team,
    required this.region,
    required this.name,
    required this.rarity,
    required this.atributtes,
    this.powers,
  });

  Team team;
  Region region;
  String name;
  Rarity rarity;
  Attributes atributtes;
  List<Powers>? powers;

  void flip() {
    this.team = this.team == Team.PLAYER ? Team.ENEMY : Team.PLAYER;
  }
}
