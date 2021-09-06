import 'package:flutter/material.dart';
import 'package:pac4/Pages/Game/Card/CardData.dart';

class EnemyCards with ChangeNotifier {
  final _enemyCards = <CardData?>[
    CardData(
      team: Team.ENEMY,
      region: Region.NOXUS,
      name: 'darius_champion',
      rarity: Rarity.LEGENDARY,
      atributtes: Attributes(1, 1, 1, 1),
    ),
    CardData(
      team: Team.ENEMY,
      region: Region.NOXUS,
      name: 'affectionate_poro',
      rarity: Rarity.COMMON,
      atributtes: Attributes(1, 1, 1, 1),
    ),
    CardData(
      team: Team.ENEMY,
      region: Region.NOXUS,
      name: 'aristocrat',
      rarity: Rarity.COMMON,
      atributtes: Attributes(1, 1, 1, 1),
    ),
    CardData(
      team: Team.ENEMY,
      region: Region.NOXUS,
      name: 'bookie',
      rarity: Rarity.COMMON,
      atributtes: Attributes(1, 1, 1, 1),
    ),
    CardData(
      team: Team.ENEMY,
      region: Region.NOXUS,
      name: 'draven',
      rarity: Rarity.COMMON,
      atributtes: Attributes(1, 1, 1, 1),
    ),
    CardData(
      team: Team.ENEMY,
      region: Region.NOXUS,
      name: 'drummer',
      rarity: Rarity.COMMON,
      atributtes: Attributes(1, 1, 1, 1),
    ),
    CardData(
      team: Team.ENEMY,
      region: Region.NOXUS,
      name: 'shiraza',
      rarity: Rarity.COMMON,
      atributtes: Attributes(1, 1, 1, 1),
    ),
    CardData(
      team: Team.ENEMY,
      region: Region.NOXUS,
      name: 'veteran',
      rarity: Rarity.COMMON,
      atributtes: Attributes(1, 1, 1, 1),
    ),
  ];

  List<CardData?> get enemyCards => [..._enemyCards];

  void removeFromEnemyHand(CardData cardData) {
    final index = _enemyCards.indexOf(cardData);
    _enemyCards[index] = null;
    notifyListeners();
  }
}
