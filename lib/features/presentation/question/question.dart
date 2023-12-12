import 'package:flutter/material.dart';

class QuestPage extends StatefulWidget {
  const QuestPage({super.key});

  @override
  State<QuestPage> createState() => _QuestPageState();
}

class _QuestPageState extends State<QuestPage> {
  @override
  Widget build(BuildContext context) {
    // final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        color: bodyColor,
        alignment: Alignment.center,
        child: SingleChildScrollView(
          child: SizedBox(
            width: 500,
            height: 600,
            child: Padding(
              padding: const EdgeInsets.all(30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  SizedBox(
                    width: 200,
                    child: FloatingActionButton(
                      hoverColor: hoverColor,
                      backgroundColor: canvasColor,
                      onPressed: () {},
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            'Add Question',
                            style:
                                TextStyle(color: textColor, fontSize: textSize),
                          ),
                          Icon(
                            Icons.add_box_rounded,
                            color: textColor,
                            size: iconSize,
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  SizedBox(
                    width: 200,
                    child: FloatingActionButton(
                      hoverColor: hoverColor,
                      backgroundColor: canvasColor,
                      onPressed: () {},
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            'Edit Question',
                            style:
                                TextStyle(color: textColor, fontSize: textSize),
                          ),
                          Icon(
                            Icons.edit_square,
                            color: textColor,
                            size: iconSize,
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
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
