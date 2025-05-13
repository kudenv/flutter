import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Opacity(opacity: 0.1, child: Image.asset('assets/images/quiz-logo.png', width: 300)),
          SizedBox(height: 20),
          const Text(
            "Learn Stuff1",
            style: TextStyle(color: Color.fromARGB(255, 255, 255, 252), fontSize: 24),
          ),
          const SizedBox(height: 20),
          OutlinedButton.icon(
            onPressed: () {
              startQuiz();
            },
            label: const Text("Start Quiz"),
            style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
            icon: Icon(Icons.arrow_right_alt),
          ),

          //   OutlinedButton(
          //     onPressed: () {},
          //     style: OutlinedButton.styleFrom(
          //       backgroundColor: const Color.fromARGB(255, 255, 255, 252),
          //       foregroundColor: const Color.fromARGB(255, 0, 0, 0),
          //       padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
          //     ),
          //     child: Text("Start Quiz"),
          //   ),
        ],
      ),
    );
  }
}
