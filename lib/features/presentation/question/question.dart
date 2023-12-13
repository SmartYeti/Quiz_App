import 'package:flutter/material.dart';
import 'package:quiz_app/main.dart';
// import 'package:quiz_app/features/presentation/home.dart';

class QuestPage extends StatefulWidget {
  const QuestPage({super.key});

  @override
  State<QuestPage> createState() => _QuestPageState();
}

class _QuestPageState extends State<QuestPage> {
  final TextEditingController questionController = TextEditingController();
  final TextEditingController choice1Controller = TextEditingController();
  final TextEditingController choice2Controller = TextEditingController();
  final TextEditingController choice3Controller = TextEditingController();
  final TextEditingController choice4Controller = TextEditingController();
  @override
  void initState() {
    super.initState();
  }

  void clearText() {
    questionController.clear();
    choice1Controller.clear();
    choice2Controller.clear();
    choice3Controller.clear();
    choice4Controller.clear();
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        color: canvasColor,
        alignment: Alignment.center,
        child: SingleChildScrollView(
          child: FittedBox(
            fit: BoxFit.scaleDown,
            child: Padding(
              padding: const EdgeInsets.all(30),
              child: Container(
                width: 450,
                height: screenSize.height / 1,
                decoration: BoxDecoration(
                    color: canvasColor,
                    borderRadius: BorderRadius.circular(20)),
                // color: canvasColor,
                alignment: Alignment.center,

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        SizedBox(
                          width: 400,
                          height: screenSize.height / 4,
                          child: Container(
                            decoration: BoxDecoration(
                                color: white,
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(color: bodyColor),
                                boxShadow: const [
                                  BoxShadow(
                                      color: hoverColor,
                                      blurRadius: 20.0,
                                      offset: Offset(0, 10))
                                ]),
                            // color: textColor,
                            padding: const EdgeInsets.all(8.0),
                            child: TextFormField(
                              style: const TextStyle(
                                      color: canvasColor,
                                      overflow: TextOverflow.visible,
                                      fontSize: textSize),
                              controller: questionController,
                              keyboardType: TextInputType.multiline,
                              maxLines: 10,
                              decoration: const InputDecoration(
                                  // prefixIcon: Icon(
                                  //   Icons.email_outlined,
                                  //   color: textColor,
                                  // ),
                                  border: InputBorder.none,
                                  hintText: "Enter Question",
                                  hintStyle: TextStyle(
                                      color: canvasColor,
                                      overflow: TextOverflow.visible,
                                      fontSize: textSize)),
                            ),
                          ),
                          
                        ),
                        const Padding(
                          padding: EdgeInsets.all(10),
                          child: Text(
                            'Choices:',
                            style: TextStyle(color: textColor, fontSize: 15),
                          ),
                        ),
                        SizedBox(
                          width: 400,
                          child: Container(
                            decoration: BoxDecoration(
                                color: white,
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(color: bodyColor),
                                boxShadow: const [
                                  BoxShadow(
                                      color: hoverColor,
                                      blurRadius: 20.0,
                                      offset: Offset(0, 10))
                                ]),
                            // color: textColor,
                            padding: const EdgeInsets.all(5),
                            child: TextFormField(
                              style: const TextStyle(
                                      color: canvasColor,
                                      overflow: TextOverflow.visible,
                                      fontSize: textSize),
                              controller: choice1Controller,
                              keyboardType: TextInputType.multiline,
                              maxLines: 2,
                              decoration: const InputDecoration(
                                  // prefixIcon: Icon(
                                  //   Icons.email_outlined,
                                  //   color: textColor,
                                  // ),
                                  border: InputBorder.none,
                                  hintText: "Choice 1",
                                  hintStyle: TextStyle(
                                      color: canvasColor,
                                      overflow: TextOverflow.visible,
                                      fontSize: textSize)),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 400,
                          child: Container(
                            decoration: BoxDecoration(
                                color: white,
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(color: bodyColor),
                                boxShadow: const [
                                  BoxShadow(
                                      color: hoverColor,
                                      blurRadius: 20.0,
                                      offset: Offset(0, 10))
                                ]),
                            // color: textColor,
                            padding: const EdgeInsets.all(5),
                            child: TextFormField(
                              style: const TextStyle(
                                      color: canvasColor,
                                      overflow: TextOverflow.visible,
                                      fontSize: textSize),
                              controller: choice2Controller,
                              keyboardType: TextInputType.multiline,
                              maxLines: 2,
                              decoration: const InputDecoration(
                                 
                                  border: InputBorder.none,
                                  hintText: "Choice 2",
                                  hintStyle: TextStyle(
                                      color: canvasColor,
                                      overflow: TextOverflow.visible,
                                      fontSize: textSize)),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 400,
                          child: Container(
                            decoration: BoxDecoration(
                                color: white,
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(color: bodyColor),
                                boxShadow: const [
                                  BoxShadow(
                                      color: hoverColor,
                                      blurRadius: 20.0,
                                      offset: Offset(0, 10))
                                ]),
                            // color: textColor,
                            padding: const EdgeInsets.all(5),
                            child: TextFormField(
                              style: const TextStyle(
                                  color: canvasColor,
                                  overflow: TextOverflow.visible,
                                  fontSize: textSize),
                              controller: choice3Controller,
                              keyboardType: TextInputType.multiline,
                              maxLines: 2,
                              decoration: const InputDecoration(
                                 
                                  border: InputBorder.none,
                                  hintText: "Choice 3",
                                  hintStyle: TextStyle(
                                      color: canvasColor,
                                      overflow: TextOverflow.visible,
                                      fontSize: textSize)),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 400,
                          child: Container(
                            decoration: BoxDecoration(
                                color: white,
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(color: bodyColor),
                                boxShadow: const [
                                  BoxShadow(
                                      color: hoverColor,
                                      blurRadius: 20.0,
                                      offset: Offset(0, 10))
                                ]),
                            // color: textColor,
                            padding: const EdgeInsets.all(5),
                            child: TextFormField(
                              style: const TextStyle(
                                  color: canvasColor,
                                  overflow: TextOverflow.visible,
                                  fontSize: textSize),
                              controller: choice4Controller,
                              keyboardType: TextInputType.multiline,
                              maxLines: 2,
                              decoration: const InputDecoration(
                                 
                                  border: InputBorder.none,
                                  hintText: "Choice 4",
                                  hintStyle: TextStyle(
                                      color: canvasColor,
                                      overflow: TextOverflow.visible,
                                      fontSize: textSize)),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 400,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: SizedBox(
                                  width: 100,
                                  child: FloatingActionButton(
                                    heroTag: 'f1',
                                    backgroundColor: textColor,
                                    onPressed: () {},
                                    child: const Text(
                                      'Submit',
                                      style: TextStyle(
                                          color: canvasColor, fontSize: 20),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: SizedBox(
                                  width: 100,
                                  child: FloatingActionButton(
                                    heroTag: 'f2',
                                    backgroundColor: textColor,
                                    onPressed: () {
                                      clearText();
                                      
                                    },
                                    child: const Text(
                                      'Clear',
                                      style: TextStyle(
                                          color: canvasColor, fontSize: 20),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ],
                ),
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
