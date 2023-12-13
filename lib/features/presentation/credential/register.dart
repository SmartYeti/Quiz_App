import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/features/presentation/credential/login.dart';
import 'package:quiz_app/features/presentation/home.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _cpasswordController = TextEditingController();
  final TextEditingController _lnameController = TextEditingController();
  final TextEditingController _fnameController = TextEditingController();

  final GlobalKey<FormState> _formKey = GlobalKey();
  bool _isObscure = true;
  bool _isObscure2 = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        color: canvasColor,
        alignment: Alignment.center,
        child: SingleChildScrollView(
          child: SizedBox(
            width: 500,
            height: 700,
            child: Padding(
              padding: const EdgeInsets.all(30.0),
              child: Column(
                children: <Widget>[
                  const SizedBox(
                    height: 100,
                    child: Text(
                      'REGISTER',
                      style: TextStyle(
                          color: textColor,
                          fontSize: textSize,
                          letterSpacing: .5),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(5),
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
                    child: Form(
                      key: _formKey,
                      child: Column(
                        children: <Widget>[
                          Container(
                            padding: const EdgeInsets.all(8.0),
                            decoration: const BoxDecoration(
                                border: Border(
                                    bottom: BorderSide(color: canvasColor))),
                            child: TextFormField(
                              // validator: (String? val) {
                              //   return Guard.againstInvalidEmail(val, 'Email');
                              // },
                              autovalidateMode:
                                  AutovalidateMode.onUserInteraction,
                              controller: _lnameController,
                              decoration: const InputDecoration(
                                  prefixIcon: Icon(
                                    Icons.person_outline_rounded,
                                    color: canvasColor,
                                  ),
                                  border: InputBorder.none,
                                  hintText: "Last Name",
                                  hintStyle: TextStyle(color: canvasColor)),
                              //   validator: (String? val) {
                              //   return Guard.againstEmptyString(val, 'Username');
                              // }
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(8.0),
                            decoration: const BoxDecoration(
                                border: Border(
                                    bottom: BorderSide(color: canvasColor))),
                            child: TextFormField(
                              // validator: (String? val) {
                              //   return Guard.againstInvalidEmail(val, 'Email');
                              // },
                              autovalidateMode:
                                  AutovalidateMode.onUserInteraction,
                              controller: _fnameController,
                              decoration: const InputDecoration(
                                  prefixIcon: Icon(
                                    Icons.person_outline_rounded,
                                    color: canvasColor,
                                  ),
                                  border: InputBorder.none,
                                  hintText: "First Name",
                                  hintStyle: TextStyle(color: canvasColor)),
                              //   validator: (String? val) {
                              //   return Guard.againstEmptyString(val, 'Username');
                              // }
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(8.0),
                            decoration: const BoxDecoration(
                                border: Border(
                                    bottom: BorderSide(color: canvasColor))),
                            child: TextFormField(
                              // validator: (String? val) {
                              //   return Guard.againstInvalidEmail(val, 'Email');
                              // },
                              autovalidateMode:
                                  AutovalidateMode.onUserInteraction,
                              controller: _emailController,
                              decoration: const InputDecoration(
                                  prefixIcon: Icon(
                                    Icons.email_outlined,
                                    color: canvasColor,
                                  ),
                                  border: InputBorder.none,
                                  hintText: "Email",
                                  hintStyle: TextStyle(color: canvasColor)),
                              //   validator: (String? val) {
                              //   return Guard.againstEmptyString(val, 'Username');
                              // }
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(8.0),
                            decoration: const BoxDecoration(
                                border: Border(
                                    bottom: BorderSide(color: canvasColor))),
                            child: TextFormField(
                              // validator: (String? val) {
                              //   return Guard.againstEmptyString(
                              //       val, 'Password');
                              // },
                              autovalidateMode:
                                  AutovalidateMode.onUserInteraction,
                              controller: _passwordController,
                              obscureText: _isObscure,
                              decoration: InputDecoration(
                                  prefixIcon: const Icon(
                                    Icons.lock_outline_rounded,
                                    color: canvasColor,
                                  ),
                                  border: InputBorder.none,
                                  hintText: "Password",
                                  hintStyle:
                                      const TextStyle(color: canvasColor),
                                  suffixIcon: IconButton(
                                    icon: Icon(
                                      _isObscure
                                          ? Icons.visibility
                                          : Icons.visibility_off,
                                      color: canvasColor,
                                    ),
                                    onPressed: () {
                                      setState(() {
                                        _isObscure = !_isObscure;
                                      });
                                    },
                                  )),
                              //   validator: (String? val) {
                              //   return Guard.againstEmptyString(val, 'Password');
                              // }
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(8.0),
                            child: TextFormField(
                              // validator: (String? val) {
                              //   return Guard.againstEmptyString(
                              //       val, 'Password');
                              // },
                              autovalidateMode:
                                  AutovalidateMode.onUserInteraction,
                              controller: _cpasswordController,
                              obscureText: _isObscure2,
                              decoration: InputDecoration(
                                  prefixIcon: const Icon(
                                    Icons.lock_open,
                                    color: canvasColor,
                                  ),
                                  border: InputBorder.none,
                                  hintText: "Confirm Password",
                                  hintStyle:
                                      const TextStyle(color: canvasColor),
                                  suffixIcon: IconButton(
                                    icon: Icon(
                                      _isObscure2
                                          ? Icons.visibility
                                          : Icons.visibility_off,
                                      color: canvasColor,
                                    ),
                                    onPressed: () {
                                      setState(() {
                                        _isObscure2 = !_isObscure2;
                                      });
                                    },
                                  )),
                              //   validator: (String? val) {
                              //   return Guard.againstEmptyString(val, 'Password');
                              // }
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateColor.resolveWith((states) => textColor),
                      shape: MaterialStateProperty.resolveWith((states) =>
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10))),
                      overlayColor: MaterialStateProperty.resolveWith<Color?>(
                        (Set<MaterialState> states) {
                          if (states.contains(MaterialState.hovered)) {
                            return hoverColor; //<-- SEE HERE
                          }
                          if (states.contains(MaterialState.pressed)) {
                            return bodyColor; //<-- SEE HERE
                          }
                          return null; // Defer to the widget's default.
                        },
                      ),
                    ),
                    child: SizedBox(
                      height: 50,
                      child: Center(
                        child: Text(
                          "Next",

                          style: GoogleFonts.ptSerif(
                            textStyle: const TextStyle(
                              color: canvasColor,
                              fontWeight: FontWeight.bold,
                            ),
                          ),

                          // style: TextStyle(
                          //     color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const HomePage()));
                    },
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: GestureDetector(
                      onTap: () {
                         Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const LoginPage())
                         );
                      },
                      child: const Text(
                        'Cancel',
                        style: TextStyle(color: textColor),
                      ),
                    ),
                  ),
                  const SizedBox(height: 30, child: Divider()),
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
const double textSize = 30;
const double iconSize = 30;
