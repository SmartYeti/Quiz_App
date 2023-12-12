import 'package:flutter/material.dart';

class QuizPage extends StatefulWidget {
  const QuizPage({super.key});

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: bodyColor,
        alignment: Alignment.center,
        child: SingleChildScrollView(
          child: SizedBox(
            width: 500,
            height: 700,
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Builder(builder: (context) {
                return Container(
                  padding: const EdgeInsets.all(5),
                  alignment: Alignment.bottomCenter,
                  child: SizedBox(
                    height: 1300,
                    width: 600,
                    child: ListView.builder(
                      itemCount: 4,
                      itemBuilder: (context, index) {
                        return Container(
                          height: 200,
                          width: 50,
                          margin: const EdgeInsets.only(
                              bottom: 10, right: 50, left: 50),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: canvasColor,
                            boxShadow: const [
                              BoxShadow(
                                  color: Colors.black38,
                                  blurRadius: 5.0,
                                  offset: Offset(0, 3))
                            ],
                          ),
                          child: const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            mainAxisSize: MainAxisSize.max,
                            children: [],
                          ),
                        );
                      },
                    ),
                  ),
                );
              }),
            ),
          ),
        ),
      ),
    );
  }
}

const textColor = Colors.white70;
const canvasColor = Color.fromARGB(255, 33, 32, 75);
const bodyColor = Colors.black12;
const hoverColor = Color.fromARGB(255, 108, 107, 136);
const double textSize = 20;
const double iconSize = 30;
