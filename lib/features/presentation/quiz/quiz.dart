import 'package:flutter/material.dart';

class QuizPage extends StatefulWidget {
  const QuizPage({super.key});

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  bool isChecked = false;
  late int page;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: bodyColor,
        alignment: Alignment.center,
        child: SingleChildScrollView(
          child: Column(
            children: [
              // Container(
              //   // color: canvasColor,
              //   decoration: BoxDecoration(
              //     borderRadius: BorderRadius.circular(20),
              //     color: canvasColor,
              //     boxShadow: const [
              //       BoxShadow(
              //           color: Colors.black38,
              //           blurRadius: 5.0,
              //           offset: Offset(0, 3))
              //     ],
              //   ),
              //   padding: const EdgeInsets.all(10),
              //   child:  Text('Question $page',
              //       style: const TextStyle(color: textColor, fontSize: textSize)),
              // ),
              SizedBox(
                width: 900,
                height: 600,
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Builder(builder: (context) {
                    return Container(
                      padding: const EdgeInsets.all(5),
                      alignment: Alignment.bottomCenter,
                      child: SizedBox(
                        height: 600,
                        width: 800,
                        child: PageView.builder(
                          physics: const BouncingScrollPhysics(),
                          scrollDirection: Axis.vertical,
                          itemCount: 4,
                          itemBuilder: (context, index) {
                            page = index + 1;

                            final screenSize = MediaQuery.of(context).size;
                            return Container(
                              height: 200,
                              width: 100,
                              margin: const EdgeInsets.only(
                                  bottom: 10, right: 20, left: 20),
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
                              child: Column(
                                children: [
                                  Container(
                                    alignment: Alignment.topLeft,
                                   height: screenSize.width /3,
                                    padding: const EdgeInsets.all(20),
                                    child: Text('Question $page',
                                        style: const TextStyle(
                                            color: textColor,
                                            fontSize: textSize)),
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      
                                      Container(
                                        padding: const EdgeInsets.all(20),
                                        child: const Text('Questions',
                                            style: TextStyle(
                                                color: textColor,
                                                fontSize: textSize)),
                                      ),
                                      const SizedBox(
                                        height: 20,
                                        child: Divider(
                                          color: textColor,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(10),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Row(
                                              children: [
                                                Checkbox(
                                                  activeColor: checkColor,
                                                  value: isChecked,
                                                  onChanged: (bool? value) {
                                                    setState(() {
                                                      isChecked = value!;
                                                    });
                                                  },
                                                ),
                                                const Flexible(
                                                  child: Text(
                                                    'Answer',
                                                    overflow: TextOverflow.visible,
                                                    style: TextStyle(
                                                        color: textColor,
                                                        fontSize: textSize),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Row(
                                              children: [
                                                Checkbox(
                                                  activeColor: checkColor,
                                                  value: isChecked,
                                                  onChanged: (bool? value) {
                                                    setState(() {
                                                      isChecked = value!;
                                                    });
                                                  },
                                                ),
                                                const Flexible(
                                                  child: Text(
                                                    'Answer',
                                                    overflow: TextOverflow.visible,
                                                    style: TextStyle(
                                                        color: textColor,
                                                        fontSize: textSize),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Row(
                                              children: [
                                                Checkbox(
                                                  activeColor: checkColor,
                                                  value: isChecked,
                                                  onChanged: (bool? value) {
                                                    setState(() {
                                                      isChecked = value!;
                                                    });
                                                  },
                                                ),
                                                const Flexible(
                                                  child: Text(
                                                    'Answer',
                                                    overflow: TextOverflow.visible,
                                                    style: TextStyle(
                                                        color: textColor,
                                                        fontSize: textSize),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Row(
                                              children: [
                                                Checkbox(
                                                  activeColor: checkColor,
                                                  value: isChecked,
                                                  onChanged: (bool? value) {
                                                    setState(() {
                                                      isChecked = value!;
                                                    });
                                                  },
                                                ),
                                                const Flexible(
                                                  child: Text(
                                                    'Answer',
                                                    overflow: TextOverflow.visible,
                                                    style: TextStyle(
                                                        color: textColor,
                                                        fontSize: textSize),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            );
                          },
                        ),
                      ),
                    );
                  }),
                ),
              ),
            ],
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
const double textSize = 17;
const double iconSize = 30;
const checkColor = Colors.green;
