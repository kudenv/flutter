import 'package:flutter/material.dart';
import 'package:adv_basics/questions_summary/question_identifier.dart';

class QuestionsSummary extends StatelessWidget {
  final List<Map<String, Object>> summaryData;
  const QuestionsSummary({super.key, required this.summaryData});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: SingleChildScrollView(
        child: Container(
          child: Column(
            children:
                summaryData.map((data) {
                  final isCorrectAnswer = data['user_answer'] == data['correct_answer'];
                  return Row(
                    children: [
                      QuestionIdentifier(
                        isCorrectAnswer: isCorrectAnswer,
                        questionIndex: data['question_index'] as int,
                      ),
                      SizedBox(width: 20),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(data['question'] as String),
                            SizedBox(height: 5),
                            Text(
                              data['user_answer'] as String,
                              style: const TextStyle(color: Color.fromARGB(255, 202, 171, 252)),
                            ),
                            Text(
                              data['correct_answer'] as String,
                              style: const TextStyle(color: Color.fromARGB(255, 249, 133, 241)),
                            ),
                          ],
                        ),
                      ),
                    ],
                  );
                }).toList(),
          ),
        ),
      ),
    );
  }
}
