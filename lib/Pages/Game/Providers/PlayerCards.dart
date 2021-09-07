import 'package:flutter/material.dart';
import 'package:pac4/Pages/Game/Widgets/Card/CardData.dart';

class PlayerCards with ChangeNotifier {
  final _playerCards = <CardData?>[
    CardData(
      team: Team.PLAYER,
      region: Region.DEMACIA,
      name: 'garen',
      rarity: Rarity.LEGENDARY,
      atributtes: Attributes(4, 1, 2, 1),
    ),
    CardData(
      team: Team.PLAYER,
      region: Region.DEMACIA,
      name: 'swiftwing_lancer',
      rarity: Rarity.COMMON,
      atributtes: Attributes(0, -1, 7, 10),
    ),
    CardData(
      team: Team.PLAYER,
      region: Region.DEMACIA,
      name: 'laurent_duelist',
      rarity: Rarity.COMMON,
      atributtes: Attributes(3, 4, 1, 2),
    ),
    CardData(
      team: Team.PLAYER,
      region: Region.DEMACIA,
      name: 'battlesmith',
      rarity: Rarity.COMMON,
      atributtes: Attributes(4, 2, 0, 1),
    ),
    CardData(
      team: Team.PLAYER,
      region: Region.DEMACIA,
      name: 'mageseeker_inciter',
      rarity: Rarity.COMMON,
      atributtes: Attributes(1, 0, 1, 3),
    ),
    CardData(
      team: Team.PLAYER,
      region: Region.DEMACIA,
      name: 'cithria_of_cloudfield',
      rarity: Rarity.COMMON,
      atributtes: Attributes(10, 10, 10, 10),
    ),
    CardData(
      team: Team.PLAYER,
      region: Region.DEMACIA,
      name: 'plucky_poro',
      rarity: Rarity.COMMON,
      atributtes: Attributes(-1, 10, 4, 2),
    ),
    CardData(
      team: Team.PLAYER,
      region: Region.DEMACIA,
      name: 'radiant_guardian',
      rarity: Rarity.COMMON,
      atributtes: Attributes(1, 1, 1, 1),
    ),
  ];

  List<CardData?> get playerCards => [..._playerCards];

  void removeFromPlayerHand(CardData cardData) {
    final index = _playerCards.indexOf(cardData);
    _playerCards[index] = null;
    notifyListeners();
  }
}
