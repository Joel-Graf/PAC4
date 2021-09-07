import 'package:pac4/Pages/Game/Util/Constants.dart';
import 'package:pac4/Pages/Game/Widgets/Hand/Card/GameCardModel.dart';

class HandModel {
  HandModel({
    required List<GameCardModel?> cards,
    required Team team,
    required Team turn,
  })  : _cards = cards,
        _team = team,
        _turn = turn;

  final List<GameCardModel?> _cards;
  final Team _team;
  final Team _turn;

  List<GameCardModel?> get cards => [..._cards];
  bool get isBlocked => _team != _turn;
}
