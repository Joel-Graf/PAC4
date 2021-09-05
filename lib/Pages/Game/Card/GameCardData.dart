class GameCardData {
  Team team;
  Region region;
  String name;
  Rarity rarity;
  Attributes atributtes;
  List<Powers>? powers;

  GameCardData({
    required this.team,
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
