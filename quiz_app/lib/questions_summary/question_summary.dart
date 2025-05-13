import 'package:adv_basics/questions_summary/summary_item.dart';
import 'package:flutter/material.dart';

class QuestionsSummary extends StatelessWidget {
  final List<Map<String, Object>> summaryData;
  const QuestionsSummary({super.key, required this.summaryData});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SizedBox(
      height: 200,
      child: SingleChildScrollView(
        child: Column(
          children:
              summaryData.map((data) {
                return Row(children: [SummaryItem(itemData: data)]);
              }).toList(),
        ),
      ),
    );
  }
}
