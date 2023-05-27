import 'package:agrogis/SignUp/signup_ui.dart';
import 'package:flutter/material.dart';

class LoginUI extends StatefulWidget {
  const LoginUI({super.key});

  @override
  State<LoginUI> createState() => _LoginUIState();
}

class _LoginUIState extends State<LoginUI> {
  /// defining the main colors
  Color mainColor = const Color.fromARGB(255, 43, 145, 46);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height * 1,
        width: MediaQuery.of(context).size.width * 1,
        decoration: const BoxDecoration(color: Colors.white),
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.3,
              width: MediaQuery.of(context).size.width * 1,
              decoration: const BoxDecoration(color: Colors.white),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                      height: 30,
                      width: 180,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/company_logo.png'),
                          fit: BoxFit.fill,
                        ),
                      )),
                ],
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.4,
              width: MediaQuery.of(context).size.width * 1,
              decoration: const BoxDecoration(color: Colors.white),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * 0.05,
                    width: MediaQuery.of(context).size.width * 0.8,
                    decoration: const BoxDecoration(color: Colors.white),
                    child: const Text(
                      "LOGIN",
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.w900),
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height * 0.1,
                        width: MediaQuery.of(context).size.width * 0.8,
                        decoration:
                            const BoxDecoration(color: Colors.transparent),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            const Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "Username",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                            Container(
                                height:
                                    MediaQuery.of(context).size.height * 0.05,
                                width: MediaQuery.of(context).size.width * 0.8,
                                decoration: const BoxDecoration(
                                    color: Colors.transparent),
                                child: const TextField(
                                  decoration: InputDecoration(
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.black, width: 0.5),
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(5)),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.black, width: 0.5),
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(5)),
                                    ),
                                    border: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.black, width: 0.5),
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(5)),
                                    ),
                                    hintText: 'Enter your username',
                                    hintStyle: TextStyle(
                                      color: Color.fromARGB(255, 82, 82, 82),
                                      fontSize: 11,
                                    ),
                                  ),
                                )),
                          ],
                        ),
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.1,
                        width: MediaQuery.of(context).size.width * 0.8,
                        decoration:
                            const BoxDecoration(color: Colors.transparent),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            const Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "Password",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                            Container(
                                height:
                                    MediaQuery.of(context).size.height * 0.05,
                                width: MediaQuery.of(context).size.width * 0.8,
                                decoration: const BoxDecoration(
                                    color: Colors.transparent),
                                child: const TextField(
                                  decoration: InputDecoration(
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.black, width: 0.5),
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(5)),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.black, width: 0.5),
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(5)),
                                    ),
                                    border: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.black, width: 0.5),
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(5)),
                                    ),
                                    hintText: 'Enter your password',
                                    hintStyle: TextStyle(
                                      color: Color.fromARGB(255, 82, 82, 82),
                                      fontSize: 11,
                                    ),
                                  ),
                                )),
                          ],
                        ),
                      )
                    ],
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.05,
                    width: MediaQuery.of(context).size.width * 0.8,
                    decoration: const BoxDecoration(color: Colors.transparent),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/landingpage');
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: mainColor,
                          foregroundColor: Colors.white,
                          shape: const RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5)))),
                      child: const Text(
                        "LOGIN",
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.w500),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.1,
              width: MediaQuery.of(context).size.width * 1,
              decoration: const BoxDecoration(color: Colors.white),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Text(
                    "Forgot password",
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Don't have an account?",
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.w500),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, '/signup');
                        },
                        child: Text(
                          "Sign Up",
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w800,
                              color: mainColor),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
