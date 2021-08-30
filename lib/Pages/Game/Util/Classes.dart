enum Team { PLAYER, ENEMY }

enum Region { DEMACIA, NOXUS }

final Regions = {Region.DEMACIA: 'demacia', Region.NOXUS: 'noxus'};

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
