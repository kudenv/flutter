import 'package:adv_basics/data/questions.dart';
import 'package:flutter/material.dart';
// import 'package:adv_basics/questions_summary/question_summary.dart';
import 'package:adv_basics/questions_summary.dart';

class ResumeScreen extends StatelessWidget {
  const ResumeScreen({super.key, required this.choosenAnswers, required this.onResumeHandler});

  final void Function() onResumeHandler;
  final List<String> choosenAnswers;
  List<Map<String, Object>> getSummaryDate() {
    final List<Map<String, Object>> summary = [];
    for (var i = 0; i < choosenAnswers.length; i++) {
      summary.add({
        'question_index': i,
        'question': questions[i].questionText,
        'correct_answer': questions[i].answerOptions[0],
        'user_answer': choosenAnswers[i],
      });
    }
    return summary;
  }

  @override
  Widget build(BuildContext context) {
    final summaryData = getSummaryDate();
    final numTotalquestions = questions.length;
    // void onResumeHandler() {
    //   onResumeHandler();
    // }

    final numCorrectquestions =
        summaryData.where((data) {
          return data['user_answer'] == data['correct_answer'];
        }).length;
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("You answered $numCorrectquestions out of $numTotalquestions questions correctly!"),
          SizedBox(height: 30),
          QuestionsSummary(summaryData: summaryData),
          SizedBox(height: 10),
          TextButton(
            onPressed: () {
              onResumeHandler();
            },
            child: Text('Restart Quiz'),
          ),
        ],
      ),
    );
  }
}
