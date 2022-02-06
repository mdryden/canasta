import 'package:canasta/domain/score.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Canasta"),
      ),
      body: Row(
        children: const [
          Expanded(
            child: ScoreColumn(name: "Us"),
          ),
          Expanded(
            child: ScoreColumn(name: "Them"),
          )
        ],
      ),
    );
  }
}

class ScoreColumn extends StatefulWidget {
  final String name;

  const ScoreColumn({Key? key, required this.name}) : super(key: key);

  @override
  _ScoreColumnState createState() => _ScoreColumnState();
}

class _ScoreColumnState extends State<ScoreColumn> {
  final Score score = Score();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.all(10),
          decoration: const BoxDecoration(
            border: Border(
              bottom: BorderSide(
                color: Colors.black,
                width: 1,
              ),
            ),
          ),
          child: Text(
            widget.name,
            style: Theme.of(context).textTheme.headline1,
          ),
        ),
        ListView(children: [
          Text(
            score.totalScore().toString(),
            style: Theme.of(context).textTheme.bodyText1,
          ),
        ])
      ],
    );
  }
}
