import 'package:pac4/Pages/Game/Util/Constants.dart';

class Point {
  Point(this._x, this._y);

  int _x;
  int _y;

  get x => _x;
  get y => _y;

  List<Point> get neighbours {
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

// class Direction {
//   Direction(this.direction);
//   Direction.fromPoints(Point reference, Point relative)
//       : direction = _create(reference, relative);

//   DirectionEnum direction;

//   static DirectionEnum _create(Point reference, Point relative) {
//     if (reference.y < relative.y) {
//       return (DirectionEnum.TOP);
//     } else if (reference.x < relative.x) {
//       return (DirectionEnum.RIGHT);
//     } else if (reference.y > relative.y) {
//       return (DirectionEnum.BOTTOM);
//     } else {
//       return (DirectionEnum.LEFT);
//     }
//   }

//   Direction get opposite {
//     switch (direction) {
//       case DirectionEnum.TOP:
//         return Direction(DirectionEnum.BOTTOM);
//       case DirectionEnum.RIGHT:
//         return Direction(DirectionEnum.LEFT);
//       case DirectionEnum.BOTTOM:
//         return Direction(DirectionEnum.TOP);
//       case DirectionEnum.LEFT:
//         return Direction(DirectionEnum.RIGHT);
//     }
//   }
// }

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
