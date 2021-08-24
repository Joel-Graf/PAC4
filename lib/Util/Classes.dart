enum Region { DEMACIA, NOXUS }

enum Rarity { COMMON, RARE, EPIC, LEGENDARY }

class Atributtes {
  int top;
  int rigth;
  int bottom;
  int left;

  Atributtes(this.top, this.rigth, this.bottom, this.left);
}

class Powers {
  String name;
  String descrition;
  void Function() execution;

  Powers(this.name, this.descrition, this.execution);
}
