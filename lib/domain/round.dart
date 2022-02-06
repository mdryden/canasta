import 'package:canasta/domain/score_config.dart';

class Round {
  int redCanasta = 0;
  int blackCanasta = 0;
  int redThree = 0;
  int blackThree = 0;
  int twos = 0;
  int runs = 0;
  int cards = 0;

  final ScoreConfig scoreConfig = ScoreConfig(); // TODO configurable

  int totalScore() {
    return redCanasta * scoreConfig.redCanasta +
        blackCanasta * scoreConfig.blackCanasta +
        redThree * scoreConfig.redThree +
        blackThree * scoreConfig.blackThree +
        twos * scoreConfig.twos +
        runs * scoreConfig.runs +
        cards;
  }
}
