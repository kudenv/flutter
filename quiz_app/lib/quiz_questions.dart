class QuizQuestions {
  final String questionText;
  final List<String> answerOptions;

  const QuizQuestions(this.questionText, this.answerOptions);

  List<String> getShuffleAnswers() {
    final shufledList = List.of(answerOptions);
    shufledList.shuffle();
    return shufledList;
  }
}
