import 'package:day04_flash_card/flashcard.dart';
import 'package:day04_flash_card/flashcard_view.dart';
import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  List<Flashcard> _flashcards = [
    Flashcard(
        question: "あ", answer: "A"),
    Flashcard(
        question: "い", answer: "I"),
    Flashcard(
        question: "う", answer: "U"),
    Flashcard(
        question: "え", answer: "E"),
    Flashcard(
        question: "お", answer: "O"),
  ];

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
        home: Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: 350,
            height: 500,
            child: FlipCard(
              front: FlashcardView(
                text: _flashcards[_currentIndex].question,
              ),
              back: FlashcardView(
                text: _flashcards[_currentIndex].answer,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              OutlinedButton.icon(
                  onPressed: showPreviousCard,
                  icon: Icon(Icons.chevron_left),
                  label: Text('Prev')),
              OutlinedButton.icon(
                  onPressed: showNextCard,
                  icon: Icon(Icons.chevron_right),
                  label: Text('Next')),
            ],
          )
        ],
      )),
    ));
  }

  void showNextCard() {
    setState(() {
      _currentIndex = ()
    });
  }

}
