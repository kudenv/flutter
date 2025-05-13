import 'package:adv_basics/questions_screen.dart';
import 'package:adv_basics/resume_screen.dart';
import 'package:flutter/material.dart';
import 'package:adv_basics/start_screen.dart';
import 'package:adv_basics/data/questions.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  List<String> selectedAnswers = [];
  var activeScreen = 'start-screen';

  void switchScreen() {
    setState(() {
      activeScreen = 'question-screen';
    });
  }

  void onResumeHandler() {
    setState(() {
      selectedAnswers = [];
      activeScreen = 'start-screen';
    });
  }

  void chooseAnswer(String aswer) {
    selectedAnswers.add(aswer);
    if (selectedAnswers.length == questions.length) {
      setState(() {
        activeScreen = 'resume-screen';
      });
    }
  }

  Widget build(context) {
    Widget screenWidget = StartScreen(switchScreen);

    if (activeScreen == 'question-screen') {
      screenWidget = QuestionsScreen(onSelectAnswer: chooseAnswer);
    }
    if (activeScreen == 'resume-screen') {
      screenWidget = ResumeScreen(
        choosenAnswers: selectedAnswers,
        onResumeHandler: onResumeHandler,
      );
    }
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.pink, Colors.blue],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: screenWidget, //activeScreen,
        ),
      ),
    );
  }
}
