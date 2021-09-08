enum Team { PLAYER, ENEMY }

enum Rarity { COMMON, RARE, EPIC, LEGENDARY }

enum Direction { TOP, RIGHT, BOTTOM, LEFT }

enum Region { DEMACIA, NOXUS }

extension RegionExt on Region {
  static const Map _names = {
    Region.DEMACIA: 'demacia',
    Region.NOXUS: 'noxus',
  };

  String get name => _names[this];
}
