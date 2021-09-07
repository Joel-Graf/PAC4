import 'package:flutter/material.dart';
import 'package:pac4/Pages/Game/Util/Classes.dart';
import 'package:pac4/Pages/Game/Util/Constants.dart';
import 'package:pac4/Pages/Game/Widgets/Hands/Card/GameCardModel.dart';

class PlayerCards with ChangeNotifier {
  final _playerCards = <GameCardModel?>[
    GameCardModel(
      team: Team.PLAYER,
      region: Region.DEMACIA,
      name: 'garen',
      rarity: Rarity.LEGENDARY,
      atributtes: Attributes(4, 1, 2, 1),
    ),
    GameCardModel(
      team: Team.PLAYER,
      region: Region.DEMACIA,
      name: 'swiftwing_lancer',
      rarity: Rarity.COMMON,
      atributtes: Attributes(0, -1, 7, 10),
    ),
    GameCardModel(
      team: Team.PLAYER,
      region: Region.DEMACIA,
      name: 'laurent_duelist',
      rarity: Rarity.COMMON,
      atributtes: Attributes(3, 4, 1, 2),
    ),
    GameCardModel(
      team: Team.PLAYER,
      region: Region.DEMACIA,
      name: 'battlesmith',
      rarity: Rarity.COMMON,
      atributtes: Attributes(4, 2, 0, 1),
    ),
    GameCardModel(
      team: Team.PLAYER,
      region: Region.DEMACIA,
      name: 'mageseeker_inciter',
      rarity: Rarity.COMMON,
      atributtes: Attributes(1, 0, 1, 3),
    ),
    GameCardModel(
      team: Team.PLAYER,
      region: Region.DEMACIA,
      name: 'cithria_of_cloudfield',
      rarity: Rarity.COMMON,
      atributtes: Attributes(10, 10, 10, 10),
    ),
    GameCardModel(
      team: Team.PLAYER,
      region: Region.DEMACIA,
      name: 'plucky_poro',
      rarity: Rarity.COMMON,
      atributtes: Attributes(-1, 10, 4, 2),
    ),
    GameCardModel(
      team: Team.PLAYER,
      region: Region.DEMACIA,
      name: 'radiant_guardian',
      rarity: Rarity.COMMON,
      atributtes: Attributes(1, 1, 1, 1),
    ),
  ];

  List<GameCardModel?> get playerCards => [..._playerCards];

  void removeFromPlayerHand(GameCardModel cardData) {
    final index = _playerCards.indexOf(cardData);
    _playerCards[index] = null;
    notifyListeners();
  }
}
