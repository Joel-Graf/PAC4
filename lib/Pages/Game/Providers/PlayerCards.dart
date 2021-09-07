import 'package:flutter/material.dart';
import 'package:pac4/Pages/Game/Widgets/Card/CardData.dart';

class PlayerCards with ChangeNotifier {
  final _playerCards = <CardData?>[
    CardData(
      team: Team.PLAYER,
      region: Region.DEMACIA,
      name: 'garen_champion',
      rarity: Rarity.LEGENDARY,
      atributtes: Attributes(4, 1, 2, 1),
    ),
    CardData(
      team: Team.PLAYER,
      region: Region.DEMACIA,
      name: 'cavaleiro',
      rarity: Rarity.COMMON,
      atributtes: Attributes(0, -1, 7, 10),
    ),
    CardData(
      team: Team.PLAYER,
      region: Region.DEMACIA,
      name: 'duelista',
      rarity: Rarity.COMMON,
      atributtes: Attributes(3, 4, 1, 2),
    ),
    CardData(
      team: Team.PLAYER,
      region: Region.DEMACIA,
      name: 'ferreiro',
      rarity: Rarity.COMMON,
      atributtes: Attributes(4, 2, 0, 1),
    ),
    CardData(
      team: Team.PLAYER,
      region: Region.DEMACIA,
      name: 'mago_real',
      rarity: Rarity.COMMON,
      atributtes: Attributes(1, 0, 1, 3),
    ),
    CardData(
      team: Team.PLAYER,
      region: Region.DEMACIA,
      name: 'novata',
      rarity: Rarity.COMMON,
      atributtes: Attributes(10, 10, 10, 10),
    ),
    CardData(
      team: Team.PLAYER,
      region: Region.DEMACIA,
      name: 'poro_guerrero',
      rarity: Rarity.COMMON,
      atributtes: Attributes(-1, 10, 4, 2),
    ),
    CardData(
      team: Team.PLAYER,
      region: Region.DEMACIA,
      name: 'valquiria',
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
