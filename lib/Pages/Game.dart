import 'package:flutter/material.dart';

class Game extends StatefulWidget {
  const Game({Key? key}) : super(key: key);

  @override
  _GameState createState() => _GameState();
}

class _GameState extends State<Game> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        SizedBox(
          height: 100,
          width: 100,
          child: ColoredBox(
            color: Colors.red,
            child: DragTargetTest(),
          ),
        ),
        SizedBox(
          height: 100,
          width: 100,
          child: ColoredBox(
            color: Colors.blue,
            child: DraggableTest(),
          ),
        )
      ],
    );
  }
}

class DraggableTest extends StatelessWidget {
  const DraggableTest({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Draggable(
      child: SizedBox(
        height: 10,
        width: 10,
        child: Container(
          child: Text('XD'),
        ),
      ),
      feedback: Center(
        child: SizedBox(
          height: 100,
          width: 100,
          child: Material(
            child: ColoredBox(
              color: Colors.green,
              child: Text('teste'),
            ),
          ),
        ),
      ),
      data: "Oii",
    );
  }
}

class DragTargetTest extends StatefulWidget {
  const DragTargetTest({Key? key}) : super(key: key);

  @override
  _DragTargetTestState createState() => _DragTargetTestState();
}

class _DragTargetTestState extends State<DragTargetTest> {
  bool accepted = false;

  @override
  Widget build(BuildContext context) {
    return DragTarget(
      builder: (context, List<Object?> candidateData, rejectedData) {
        return accepted
            ? ColoredBox(color: Colors.black)
            : ColoredBox(color: Colors.white);
      },
      onWillAccept: (data) {
        return true;
      },
      onAccept: (data) {
        accepted = !accepted;
      },
    );
  }
}
