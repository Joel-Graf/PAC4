import 'package:flutter/material.dart';
import 'package:pac4/Pages/Game/Providers/BoardController.dart';
import 'package:pac4/Pages/Game/Widgets/Board/BoardTile/BoardTileModel.dart';
import 'package:pac4/Pages/Game/Util/EmpetyTile.dart';
import 'package:pac4/Pages/Game/Widgets/Hand/Card/GameCardModel.dart';
import 'package:pac4/Pages/Game/Widgets/Hand/Card/GameCardView.dart';
import 'package:provider/provider.dart';

class BoardTileView extends StatefulWidget {
  const BoardTileView(
    this.model, {
    Key? key,
  }) : super(key: key);

  final BoardTileModel model;

  @override
  _BoardTileViewState createState() => _BoardTileViewState();
}

class _BoardTileViewState extends State<BoardTileView> with ChangeNotifier {
  @override
  Widget build(BuildContext context) {
    return DragTarget(
      builder: (context, List<Object?> candidateData, rejectedData) {
        return widget.model.cardModel != null
            ? GameCardView(model: widget.model.cardModel!)
            : EmpetyTile();
      },
      onWillAccept: (data) {
        return widget.model.cardModel == null;
      },
      onAccept: (GameCardModel data) {
        final newData = BoardTileModel(widget.model.point, data);
        Provider.of<BoardController>(context, listen: false)
            .onCardPlay(newData);
        notifyListeners();
      },
    );
  }
}
