class Position {
  int col;
  int row;

  Position(this.col, this.row);

  List<Position> getNeighboursPos() {
    int actualCol = this.col;
    int actualRow = this.row;

    List<Position> neighbours = [];

    if (isValidPosition(actualCol + 1)) {
      neighbours.add(Position(actualCol + 1, actualRow));
    }
    if (isValidPosition(actualCol - 1)) {
      neighbours.add(Position(actualCol - 1, actualRow));
    }
    if (isValidPosition(actualRow + 1)) {
      neighbours.add(Position(actualCol, actualRow + 1));
    }
    if (isValidPosition(actualRow - 1)) {
      neighbours.add(Position(actualRow, actualRow - 1));
    }

    return neighbours;
  }

  bool isValidPosition(int pos) {
    return (pos >= 0 && pos < 4);
  }
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
