import 'package:flutter/material.dart';

class ManualsUI extends StatefulWidget {
  const ManualsUI({super.key});

  @override
  State<ManualsUI> createState() => _ManualsUIState();
}

class _ManualsUIState extends State<ManualsUI> {
  /// defining the main colors
  Color mainColor = Color.fromARGB(255, 43, 145, 46);

  /// widget to display the top contiainer
  Widget topContainer() {
    return Container(
      height: MediaQuery.of(context).size.height * 0.08,
      width: MediaQuery.of(context).size.width * 0.9,
      decoration: const BoxDecoration(color: Colors.white),
      child: Row(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(
              Icons.arrow_back_ios,
              size: 15,
            ),
          )
        ],
      ),
    );
  }

  /// widget to display the documents body
  Widget documentsBody() {
    return Container(
      height: MediaQuery.of(context).size.height * 0.4,
      width: MediaQuery.of(context).size.width * 1,
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      child: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.05,
            width: MediaQuery.of(context).size.width * 0.9,
            decoration: const BoxDecoration(color: Colors.white),
            child: const Text(
              "Available Documents (3)",
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w300),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.25,
                width: MediaQuery.of(context).size.width * 0.4,
                padding: const EdgeInsets.only(left: 5, right: 5),
                decoration: BoxDecoration(
                    color: mainColor,
                    borderRadius: const BorderRadius.all(Radius.circular(5))),
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(
                      Icons.picture_as_pdf,
                      color: Colors.black,
                      size: 50,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(
                          children: [
                            Text(
                              "Name:",
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w300,
                                  color: Color.fromARGB(255, 226, 226, 226)),
                            ),
                            SizedBox(width: 10),
                            Text(
                              "farming",
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w300,
                                  color: Color.fromARGB(255, 226, 226, 226)),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              "Type:",
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w300,
                                  color: Color.fromARGB(255, 226, 226, 226)),
                            ),
                            SizedBox(width: 10),
                            Text(
                              "pdf",
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w300,
                                  color: Color.fromARGB(255, 226, 226, 226)),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              "Date:",
                              style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w200,
                                  color: Color.fromARGB(255, 226, 226, 226)),
                            ),
                            SizedBox(width: 10),
                            Text(
                              "5/05/2023",
                              style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w200,
                                  color: Color.fromARGB(255, 226, 226, 226)),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Opacity(
                          opacity: 0.7,
                          child: Icon(
                            Icons.download,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(width: 10),
                        Opacity(
                          opacity: 0.7,
                          child: Icon(
                            Icons.view_carousel,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.25,
                width: MediaQuery.of(context).size.width * 0.4,
                padding: const EdgeInsets.only(left: 5, right: 5),
                decoration: BoxDecoration(
                    color: mainColor,
                    borderRadius: const BorderRadius.all(Radius.circular(5))),
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(
                      Icons.picture_as_pdf,
                      color: Colors.black,
                      size: 50,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(
                          children: [
                            Text(
                              "Name:",
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w300,
                                  color: Color.fromARGB(255, 226, 226, 226)),
                            ),
                            SizedBox(width: 10),
                            Text(
                              "farming",
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w300,
                                  color: Color.fromARGB(255, 226, 226, 226)),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              "Type:",
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w300,
                                  color: Color.fromARGB(255, 226, 226, 226)),
                            ),
                            SizedBox(width: 10),
                            Text(
                              "pdf",
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w300,
                                  color: Color.fromARGB(255, 226, 226, 226)),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              "Date:",
                              style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w200,
                                  color: Color.fromARGB(255, 226, 226, 226)),
                            ),
                            SizedBox(width: 10),
                            Text(
                              "5/05/2023",
                              style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w200,
                                  color: Color.fromARGB(255, 226, 226, 226)),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Opacity(
                          opacity: 0.7,
                          child: Icon(
                            Icons.download,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(width: 10),
                        Opacity(
                          opacity: 0.7,
                          child: Icon(
                            Icons.view_carousel,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height * 1,
        width: MediaQuery.of(context).size.width * 1,
        decoration: const BoxDecoration(color: Colors.white),
        child: Column(
          children: [
            topContainer(),
            documentsBody(),
          ],
        ),
      ),
    );
  }
}
