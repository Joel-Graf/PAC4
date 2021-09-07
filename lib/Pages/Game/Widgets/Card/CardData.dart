class CardData {
  Team team;
  Region region;
  String name;
  Rarity rarity;
  Attributes atributtes;
  List<Powers>? powers;

  CardData({
    required this.team,
    required this.region,
    required this.name,
    required this.rarity,
    required this.atributtes,
    this.powers,
  });

  CardData getFlipped() {
    this.team = this.team == Team.PLAYER ? Team.ENEMY : Team.PLAYER;
    return this;
  }
}

enum Team { PLAYER, ENEMY }

enum Region { DEMACIA, NOXUS }

const Map Regions = {Region.DEMACIA: 'demacia', Region.NOXUS: 'noxus'};

enum Rarity { COMMON, RARE, EPIC, LEGENDARY }

class Attributes {
  int _top;
  int _right;
  int _bottom;
  int _left;

  Map<Direction, int> get values => {
        Direction.TOP: _top,
        Direction.RIGHT: _right,
        Direction.BOTTOM: _bottom,
        Direction.LEFT: _left
      };

  Attributes(this._top, this._right, this._bottom, this._left);
}

enum Direction { TOP, RIGHT, BOTTOM, LEFT }

class Powers {
  String name;
  String descrition;
  void Function() execution;

  Powers(this.name, this.descrition, this.execution);
}
