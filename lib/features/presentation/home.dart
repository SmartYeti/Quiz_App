// import 'dart:io';

import 'package:flutter/material.dart';
import 'package:quiz_app/features/presentation/question/question.dart';
import 'package:quiz_app/features/presentation/quiz/quiz.dart';

import 'package:sidebarx/sidebarx.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _SidebarXExampleAppState();
}

class _SidebarXExampleAppState extends State<HomePage> {
  final _controller = SidebarXController(selectedIndex: 0, extended: true);
  final _key = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'Home',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: primaryColor,
        canvasColor: canvasColor,
        scaffoldBackgroundColor: scaffoldBackgroundColor,
        textTheme: const TextTheme(
          headlineSmall: TextStyle(
            color: Colors.white,
            fontSize: 46,
            fontWeight: FontWeight.w800,
          ),
        ),
      ),
      home: Builder(
        
        builder: (context) {
          final isSmallScreen = MediaQuery.of(context).size.width < 600;

          return Scaffold(
            resizeToAvoidBottomInset: false,
            key: _key,

            appBar: isSmallScreen
            ? AppBar(
              centerTitle: true,
              backgroundColor: canvasColor,
              title: const Text('Quiz App', 
              style: TextStyle(
                color: Colors.white
              ),),
              leading: IconButton(
                onPressed: () {
                  // if (!Platform.isAndroid && !Platform.isIOS) {
                  //   _controller.setExtended(true);
                  // }
                  _key.currentState?.openDrawer();
                },
                icon: const Icon(
                  Icons.menu,
                  color: Colors.white70,
                ),
              ),
            )
            : null,
    
            drawer: SidebarX(
              controller: _controller,
              theme: SidebarXTheme(
                margin: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: canvasColor,
                  borderRadius: BorderRadius.circular(20),
                ),
                hoverColor: scaffoldBackgroundColor,
                textStyle:
                    TextStyle(color: Colors.white.withOpacity(0.7)),
                selectedTextStyle: const TextStyle(color: Colors.white),
                itemTextPadding: const EdgeInsets.only(left: 20),
                selectedItemTextPadding:
                    const EdgeInsets.only(left: 20),
                itemDecoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: canvasColor),
                ),
                selectedItemDecoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: actionColor.withOpacity(0.37),
                  ),
                  gradient: const LinearGradient(
                    colors: [accentCanvasColor, canvasColor],
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.28),
                      blurRadius: 30,
                    )
                  ],
                ),
                iconTheme: IconThemeData(
                  color: Colors.white.withOpacity(0.7),
                  size: 20,
                ),
                selectedIconTheme: const IconThemeData(
                  color: Colors.white,
                  size: 20,
                ),
              ),
              extendedTheme: const SidebarXTheme(
                width: 150,
                decoration: BoxDecoration(
                  color: canvasColor,
                ),
              ),
              // footerDivider: divider,
              headerBuilder: (context, extended) {
                return const SizedBox(
                  height: 100,
                  child: Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Icon(
                      Icons.person,
                      color: white,
                    )
                    // Text('Image', selectionColor: Colors.white,)
                    // Image.asset('assets/images/avatar.png')
                    ,
                  ),
                );
              },
              items: [
                SidebarXItem(
                  icon: Icons.add_comment_rounded,
                  label: 'Questions',
                  onTap: () {
                    // debugPrint('Home');
                  },
                ),
                // SidebarXItem(
                //   icon: Icons.search,
                //   label: 'Search',
                //   onTap: () {
                //     // debugPrint('Search');
                //   },
                // ),
                const SidebarXItem(
                  icon: Icons.quiz_rounded,
                  label: 'Quiz',
                ),
                // const SidebarXItem(
                //   icon: Icons.favorite,
                //   label: 'Favorites',
                // ),
              ],
              footerItems: [
                SidebarXItem(
                  icon: Icons.power_settings_new_rounded,
                  label: 'Logout',
                  onTap: () {
                    // debugPrint('Logout');
                    // Navigator.push(
                    //     context,
                    //     MaterialPageRoute(
                    //         builder: (context) => const LoginPage()));
                  },
                )
              ],
            ),
            // ExampleSidebarX(controller: _controller)
    
            body: Row(
             
              children: [
             if (!isSmallScreen)
                  SidebarX(
                    controller: _controller,
                    theme: SidebarXTheme(
                      margin: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: canvasColor,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      hoverColor: scaffoldBackgroundColor,
                      textStyle:
                          TextStyle(color: Colors.white.withOpacity(0.7)),
                      selectedTextStyle:
                          const TextStyle(color: Colors.white),
                      itemTextPadding: const EdgeInsets.only(left: 30),
                      selectedItemTextPadding:
                          const EdgeInsets.only(left: 30),
                      itemDecoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: canvasColor),
                      ),
                      selectedItemDecoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: actionColor.withOpacity(0.37),
                        ),
                        gradient: const LinearGradient(
                          colors: [accentCanvasColor, canvasColor],
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.28),
                            blurRadius: 30,
                          )
                        ],
                      ),
                      iconTheme: IconThemeData(
                        color: Colors.white.withOpacity(0.7),
                        size: 20,
                      ),
                      selectedIconTheme: const IconThemeData(
                        color: Colors.white,
                        size: 20,
                      ),
                    ),
                    extendedTheme: const SidebarXTheme(
                      width: 200,
                      decoration: BoxDecoration(
                        color: canvasColor,
                      ),
                    ),
                    // footerDivider: divider,
                    headerBuilder: (context, extended) {
                      return const SizedBox(
                        height: 100,
                        child: Padding(
                          padding: EdgeInsets.all(16.0),
                          child: Icon(
                            Icons.person,
                            color: white,
                          )
                          // Text('Image', selectionColor: Colors.white,)
                          // Image.asset('assets/images/avatar.png')
                          ,
                        ),
                      );
                    },
                    items: [
                      SidebarXItem(
                        icon: Icons.add_comment_rounded,
                        label: 'Questions',
                        onTap: () {
                          // debugPrint('Home');
                        },
                      ),
                      // SidebarXItem(
                      //   icon: Icons.search,
                      //   label: 'Search',
                      //   onTap: () {
                      //     // debugPrint('Search');
                      //   },
                      // ),
                      const SidebarXItem(
                        icon: Icons.quiz_rounded,
                        label: 'Quiz',
                      ),
                      // const SidebarXItem(
                      //   icon: Icons.favorite,
                      //   label: 'Favorites',
                      // ),
                    ],
                    footerItems: [
                      SidebarXItem(
                        icon: Icons.power_settings_new_rounded,
                        label: 'Logout',
                        onTap: () {
                          // debugPrint('Logout');
                          // Navigator.push(
                          //     context,
                          //     MaterialPageRoute(
                          //         builder: (context) => const LoginPage()));
                        },
                      )
                    ],
                  )
                // ExampleSidebarX(controller: _controller)
                ,
                Expanded(
                  child: Center(
                    child:
            
                    _ScreensExample(
                      controller: _controller
                      ,
                    )
            
                    ,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

class _ScreensExample extends StatefulWidget {
  const _ScreensExample({
    required this.controller,
  });

  final SidebarXController controller;

  @override
  State<_ScreensExample> createState() => _ScreensExampleState();
}

class _ScreensExampleState extends State<_ScreensExample> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return AnimatedBuilder(
      animation: widget.controller,
      builder: (context, child) {
        final pageTitle = _getTitleByIndex(widget.controller.selectedIndex);
        switch (widget.controller.selectedIndex) {
          case 0:
            return const QuestPage();
            // return const Text('Questions');
          case 1:
          return const QuizPage();
          // return const AddShopPage();
            // return const Text('Quiz');

          case 2:
          default:
            return Text(
              pageTitle,
              style: theme.textTheme.headlineSmall,
            );
        }
      },
    );
  }
}

String _getTitleByIndex(int index) {
  switch (index) {
    case 0:
      return 'Questions';
    // case 1:
    //   return 'Search';
    case 1:
      return 'Quiz';
    // case 3:
    //   return 'Favorites';
    // // case 4:
    // //   return 'Custom iconWidget';
    // case 5:
    //   return 'Profile';
    // case 6:
    //   return 'Settings';
    // case 7:
    //   return 'Logout';
    default:
      return 'Not found page';
  }
}

const textColor = Colors.brown;
const primaryColor = Colors.grey;
const canvasColor = Color.fromARGB(255, 33, 32, 75);
const scaffoldBackgroundColor = Colors.white38;
const accentCanvasColor = Color.fromRGBO(98, 114, 94, 1);
const white = Colors.white;
final actionColor = const Color(0xFF5F5FA7).withOpacity(0.6);
final divider = Divider(color: white.withOpacity(0.3), height: 1);
