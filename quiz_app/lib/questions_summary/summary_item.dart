//import 'package:adv_basics/questions_summary/question_identifier.dart';
import 'package:flutter/material.dart';
//import 'package:google_fonts/google_fonts.dart';

class SummaryItem extends StatelessWidget {
  const SummaryItem({super.key, required this.itemData});
  final Map<String, Object> itemData;

  @override
  Widget build(BuildContext context) {
    //final isCorrectAnswer = itemData['user_answer'] == itemData['correct_answer'];
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // QuestionIdentifier(
        //   isCorrectAnswer: isCorrectAnswer,
        //   questionIndex: itemData['question_index'] as int,
        // ),
        SizedBox(width: 20),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(itemData['question'] as String),
              // Text(
              //   itemData['user_answer'] as String,
              //   style: const TextStyle(color: Color.fromARGB(255, 202, 171, 252)),
              // ),
              // Text(
              //   itemData['correct_answer'] as String,
              //   style: const TextStyle(color: Color.fromARGB(255, 249, 133, 241)),
              // ),
            ],
          ),
        ),
      ],
    );
  }
}
