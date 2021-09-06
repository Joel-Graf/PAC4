import 'package:flutter/material.dart';
import 'package:pac4/Pages/Game/Card/CardData.dart';

class PlayerCards with ChangeNotifier {
  final _playerCards = <CardData?>[
    CardData(
      team: Team.PLAYER,
      region: Region.DEMACIA,
      name: 'garen_champion',
      rarity: Rarity.LEGENDARY,
      atributtes: Attributes(1, 1, 1, 1),
    ),
    CardData(
      team: Team.PLAYER,
      region: Region.DEMACIA,
      name: 'cavaleiro',
      rarity: Rarity.COMMON,
      atributtes: Attributes(1, 1, 1, 1),
    ),
    CardData(
      team: Team.PLAYER,
      region: Region.DEMACIA,
      name: 'duelista',
      rarity: Rarity.COMMON,
      atributtes: Attributes(1, 1, 1, 1),
    ),
    CardData(
      team: Team.PLAYER,
      region: Region.DEMACIA,
      name: 'ferreiro',
      rarity: Rarity.COMMON,
      atributtes: Attributes(1, 1, 1, 1),
    ),
    CardData(
      team: Team.PLAYER,
      region: Region.DEMACIA,
      name: 'mago_real',
      rarity: Rarity.COMMON,
      atributtes: Attributes(1, 1, 1, 1),
    ),
    CardData(
      team: Team.PLAYER,
      region: Region.DEMACIA,
      name: 'novata',
      rarity: Rarity.COMMON,
      atributtes: Attributes(1, 1, 1, 1),
    ),
    CardData(
      team: Team.PLAYER,
      region: Region.DEMACIA,
      name: 'poro_guerrero',
      rarity: Rarity.COMMON,
      atributtes: Attributes(1, 1, 1, 1),
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

  void removeFromPlayerHand(CardData gameCardData) {
    final index = _playerCards.indexOf(gameCardData);
    _playerCards[index] = null;
    notifyListeners();
  }
}
