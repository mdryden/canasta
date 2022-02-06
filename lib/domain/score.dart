import 'package:canasta/domain/round.dart';

class Score {
  final List<Round> rounds = <Round>[];

  totalScore() => rounds.fold(0, (int sum, round) => sum + round.totalScore());
}
