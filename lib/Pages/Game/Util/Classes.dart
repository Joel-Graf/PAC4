import 'package:pac4/Pages/Game/Util/Constants.dart';

class Point {
  Point(this._x, this._y);

  int _x;
  int _y;

  get x => _x;
  get y => _y;

  List<Point> getNeighbours() {
    List<Point> neighbours = [];

    if (_isValidPoint(_y + 1)) {
      neighbours.add(Point(_x, _y + 1));
    }
    if (_isValidPoint(_x + 1)) {
      neighbours.add(Point(_x + 1, _y));
    }
    if (_isValidPoint(_y - 1)) {
      neighbours.add(Point(_x, _y - 1));
    }
    if (_isValidPoint(_x - 1)) {
      neighbours.add(Point(_x - 1, _y));
    }

    return neighbours;
  }

  bool _isValidPoint(int point) {
    return (point >= 0 && point < 4);
  }
}

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

class Powers {
  String name;
  String descrition;
  void Function() execution;

  Powers(this.name, this.descrition, this.execution);
}
