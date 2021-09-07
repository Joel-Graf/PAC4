import 'package:flutter/material.dart';
import 'package:pac4/Pages/Game/Util/Classes.dart';
import 'package:pac4/Pages/Game/Util/Constants.dart';
import 'package:pac4/Pages/Game/Widgets/Hand/Card/GameCardModel.dart';

class EnemyCards with ChangeNotifier {
  final _enemyCards = <GameCardModel?>[
    GameCardModel(
      team: Team.ENEMY,
      region: Region.NOXUS,
      name: 'darius',
      rarity: Rarity.LEGENDARY,
      atributtes: Attributes(3, 1, 2, 4),
    ),
    GameCardModel(
      team: Team.ENEMY,
      region: Region.NOXUS,
      name: 'affectionate_poro',
      rarity: Rarity.COMMON,
      atributtes: Attributes(1, 4, 0, 7),
    ),
    GameCardModel(
      team: Team.ENEMY,
      region: Region.NOXUS,
      name: 'crimson_aristocrat',
      rarity: Rarity.COMMON,
      atributtes: Attributes(5, 1, 2, -2),
    ),
    GameCardModel(
      team: Team.ENEMY,
      region: Region.NOXUS,
      name: 'arena_bookie',
      rarity: Rarity.COMMON,
      atributtes: Attributes(6, 3, 1, 2),
    ),
    GameCardModel(
      team: Team.ENEMY,
      region: Region.NOXUS,
      name: 'legion_marauder',
      rarity: Rarity.COMMON,
      atributtes: Attributes(4, 1, 3, 0),
    ),
    GameCardModel(
      team: Team.ENEMY,
      region: Region.NOXUS,
      name: 'legion_drummer',
      rarity: Rarity.COMMON,
      atributtes: Attributes(0, 1, 2, 1),
    ),
    GameCardModel(
      team: Team.ENEMY,
      region: Region.NOXUS,
      name: 'shiraza_the_blade',
      rarity: Rarity.COMMON,
      atributtes: Attributes(10, 10, 10, 10),
    ),
    GameCardModel(
      team: Team.ENEMY,
      region: Region.NOXUS,
      name: 'legion_veteran',
      rarity: Rarity.COMMON,
      atributtes: Attributes(0, 5, 2, 10),
    ),
  ];

  List<GameCardModel?> get enemyCards => [..._enemyCards];

  void removeFromEnemyHand(GameCardModel cardData) {
    final index = _enemyCards.indexOf(cardData);
    _enemyCards[index] = null;
    notifyListeners();
  }
}
