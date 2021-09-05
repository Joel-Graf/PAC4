class GameCardClass {
  Region region = Region.DEMACIA;
  String name = 'novata';
  Rarity rarity = Rarity.COMMON;
  Attributes atributtes = Attributes(1, 1, 1, 1);
  List<Powers>? powers;

  GameCardClass({
    required this.region,
    required this.name,
    required this.rarity,
    required this.atributtes,
    this.powers,
  });
}

enum Team { PLAYER, ENEMY }

enum Region { DEMACIA, NOXUS }

const Map Regions = {Region.DEMACIA: 'demacia', Region.NOXUS: 'noxus'};

enum Rarity { COMMON, RARE, EPIC, LEGENDARY }

class Attributes {
  int top;
  int rigth;
  int bottom;
  int left;

  Attributes(this.top, this.rigth, this.bottom, this.left);
}

class Powers {
  String name;
  String descrition;
  void Function() execution;

  Powers(this.name, this.descrition, this.execution);
}
