import 'package:flutter/material.dart';

class IssuesUI extends StatefulWidget {
  const IssuesUI({super.key});

  @override
  State<IssuesUI> createState() => _IssuesUIState();
}

class _IssuesUIState extends State<IssuesUI> {
  /// defining the main colors
  Color mainColor = const Color.fromARGB(255, 43, 145, 46);

  /// widget to display the top contiainer
  Widget topContainer() {
    return Container(
      height: MediaQuery.of(context).size.height * 0.08,
      width: MediaQuery.of(context).size.width * 0.9,
      decoration: const BoxDecoration(color: Colors.white),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(
              Icons.arrow_back_ios,
              size: 20,
              color: Colors.black,
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.1,
            width: MediaQuery.of(context).size.width * 0.55,
            decoration: const BoxDecoration(color: Colors.white),
            child: const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Issues",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
              ),
            ),
          )
        ],
      ),
    );
  }

  /// widget to show the opened issues
  Widget openedIssues() {
    return Container(
      height: MediaQuery.of(context).size.height * 0.45,
      width: MediaQuery.of(context).size.width * 1,
      margin: const EdgeInsets.only(top: 10),
      decoration: const BoxDecoration(color: Colors.white),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.04,
            width: MediaQuery.of(context).size.width * 0.95,
            decoration: const BoxDecoration(
              color: Colors.transparent,
            ),
            child: const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Opened Issues",
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
              ),
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.4,
            width: MediaQuery.of(context).size.width * 0.9,
            margin: const EdgeInsets.only(left: 5, right: 5),
            decoration: const BoxDecoration(
              color: Colors.transparent,
            ),
            child: ListView.builder(
                itemCount: 7,
                scrollDirection: Axis.vertical,
                itemBuilder: ((context, index) {
                  return Container(
                    height: MediaQuery.of(context).size.height * 0.15,
                    width: MediaQuery.of(context).size.width * 0.9,
                    margin: const EdgeInsets.only(
                        top: 5, bottom: 10, left: 5, right: 5),
                    decoration: BoxDecoration(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.3),
                            spreadRadius: 1,
                            blurRadius: 1,
                            offset: const Offset(0, 1),
                          ),
                        ],
                        color: Colors.white),
                    child: Align(
                      alignment: Alignment.center,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            height: MediaQuery.of(context).size.height * 0.04,
                            width: MediaQuery.of(context).size.width * 0.8,
                            padding: const EdgeInsets.only(left: 10, right: 10),
                            decoration: const BoxDecoration(
                              color: Colors.white,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Status: OPEN",
                                  style: TextStyle(
                                      fontSize: 11,
                                      color: mainColor,
                                      fontWeight: FontWeight.w500),
                                ),
                                Text(
                                  "Reported on:",
                                  style: TextStyle(
                                      fontSize: 11,
                                      color: mainColor,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                          ),
                          const Divider(
                            color: Color.fromARGB(255, 190, 190, 190),
                            thickness: 0.5,
                            height: 0.01,
                          ),
                          Column(
                            children: [
                              Container(
                                height:
                                    MediaQuery.of(context).size.height * 0.065,
                                width: MediaQuery.of(context).size.width * 0.7,
                                decoration: const BoxDecoration(
                                  color: Colors.transparent,
                                ),
                                child: const Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Abiotic damage",
                                      style: TextStyle(
                                          fontSize: 11,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    Text(
                                      "None:",
                                      style: TextStyle(
                                          fontSize: 11,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                height:
                                    MediaQuery.of(context).size.height * 0.04,
                                width: MediaQuery.of(context).size.width * 0.8,
                                padding:
                                    const EdgeInsets.only(left: 10, right: 10),
                                decoration: const BoxDecoration(
                                  color: Colors.white,
                                ),
                                child: const Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Field 1",
                                      style: TextStyle(
                                          fontSize: 11,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    Text(
                                      "Crop: Corn",
                                      style: TextStyle(
                                          fontSize: 11,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  );
                })),
          ),
        ],
      ),
    );
  }

  /// widget to show the add issue floating bar
  Widget addIssue() {
    return Container(
      height: MediaQuery.of(context).size.height * 0.1,
      width: MediaQuery.of(context).size.width * 1,
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      child: GestureDetector(
        onTap: () {
          addIssuePanel();
        },
        child: Center(
          child: CircleAvatar(
            radius: 30,
            backgroundColor: mainColor,
            child: const Text(
              "ADD",
              style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height * 1,
        width: MediaQuery.of(context).size.width * 1,
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        child: Column(
          children: [
            topContainer(),
            openedIssues(),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.35,
            ),
            addIssue()
          ],
        ),
      ),
    );
  }

  /// method to show the dialog for showing farm details
  Future addIssuePanel() {
    return showDialog(
        useSafeArea: false,
        context: context,
        builder: (ctx) => AlertDialog(
              title: Container(
                height: MediaQuery.of(context).size.height * 0.04,
                width: MediaQuery.of(context).size.width * 1,
                decoration: BoxDecoration(
                  color: mainColor,
                ),
                child: const Align(
                  alignment: Alignment.center,
                  child: Text(
                    "Add Issue",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Colors.white),
                  ),
                ),
              ),
              content: Container(
                height: MediaQuery.of(context).size.height * 0.45,
                width: MediaQuery.of(context).size.width * 1,
                decoration: const BoxDecoration(
                  color: Colors.transparent,
                ),
                child: Column(
                  children: [
                    Container(
                        height: MediaQuery.of(context).size.height * 0.45,
                        width: MediaQuery.of(context).size.width * 0.9,
                        padding: const EdgeInsets.only(top: 10),
                        decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              children: [
                                Container(
                                  padding: const EdgeInsets.only(
                                      left: 20, bottom: 5),
                                  child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      "Report date",
                                      style: TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.w400,
                                          color: mainColor),
                                    ),
                                  ),
                                ),
                                Container(
                                    height: MediaQuery.of(context).size.height *
                                        0.04,
                                    width:
                                        MediaQuery.of(context).size.width * 0.8,
                                    decoration: const BoxDecoration(),
                                    child: TextField(
                                      decoration: InputDecoration(
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: mainColor, width: 0.2),
                                          borderRadius: const BorderRadius.all(
                                              Radius.circular(5)),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: mainColor, width: 0.5),
                                          borderRadius: const BorderRadius.all(
                                              Radius.circular(0)),
                                        ),
                                        border: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: mainColor, width: 0.5),
                                          borderRadius: const BorderRadius.all(
                                              Radius.circular(0)),
                                        ),
                                      ),
                                    )),
                              ],
                            ),
                            Column(
                              children: [
                                Container(
                                  padding: const EdgeInsets.only(
                                      left: 20, bottom: 5),
                                  child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      "Field",
                                      style: TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.w400,
                                          color: mainColor),
                                    ),
                                  ),
                                ),
                                Container(
                                    height: MediaQuery.of(context).size.height *
                                        0.05,
                                    width:
                                        MediaQuery.of(context).size.width * 0.8,
                                    decoration: const BoxDecoration(
                                        color:
                                            Color.fromARGB(0, 255, 255, 255)),
                                    child: TextField(
                                      decoration: InputDecoration(
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: mainColor, width: 0.2),
                                          borderRadius: const BorderRadius.all(
                                              Radius.circular(5)),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: mainColor, width: 0.5),
                                          borderRadius: const BorderRadius.all(
                                              Radius.circular(0)),
                                        ),
                                        border: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: mainColor, width: 0.5),
                                          borderRadius: const BorderRadius.all(
                                              Radius.circular(0)),
                                        ),
                                      ),
                                    )),
                              ],
                            ),
                            Column(
                              children: [
                                Container(
                                  padding: const EdgeInsets.only(
                                      left: 20, bottom: 5),
                                  child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      "Type",
                                      style: TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.w400,
                                          color: mainColor),
                                    ),
                                  ),
                                ),
                                Container(
                                    height: MediaQuery.of(context).size.height *
                                        0.05,
                                    width:
                                        MediaQuery.of(context).size.width * 0.8,
                                    decoration: const BoxDecoration(
                                        color:
                                            Color.fromARGB(0, 255, 255, 255)),
                                    child: TextField(
                                      decoration: InputDecoration(
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: mainColor, width: 0.2),
                                          borderRadius: const BorderRadius.all(
                                              Radius.circular(5)),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: mainColor, width: 0.5),
                                          borderRadius: const BorderRadius.all(
                                              Radius.circular(0)),
                                        ),
                                        border: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: mainColor, width: 0.5),
                                          borderRadius: const BorderRadius.all(
                                              Radius.circular(0)),
                                        ),
                                      ),
                                    )),
                              ],
                            ),
                            Column(
                              children: [
                                Container(
                                  padding: const EdgeInsets.only(
                                      left: 20, bottom: 5),
                                  child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      "Note",
                                      style: TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.w400,
                                          color: mainColor),
                                    ),
                                  ),
                                ),
                                Container(
                                    height: MediaQuery.of(context).size.height *
                                        0.05,
                                    width:
                                        MediaQuery.of(context).size.width * 0.8,
                                    decoration: const BoxDecoration(
                                        color:
                                            Color.fromARGB(0, 255, 255, 255)),
                                    child: TextField(
                                      decoration: InputDecoration(
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: mainColor, width: 0.2),
                                          borderRadius: const BorderRadius.all(
                                              Radius.circular(5)),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: mainColor, width: 0.5),
                                          borderRadius: const BorderRadius.all(
                                              Radius.circular(0)),
                                        ),
                                        border: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: mainColor, width: 0.5),
                                          borderRadius: const BorderRadius.all(
                                              Radius.circular(0)),
                                        ),
                                      ),
                                    )),
                              ],
                            ),
                            Container(
                              height: MediaQuery.of(context).size.height * 0.05,
                              width: MediaQuery.of(context).size.width * 0.8,
                              margin: const EdgeInsets.only(top: 10),
                              decoration: const BoxDecoration(
                                  color: Colors.transparent),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.location_on_sharp,
                                    color: mainColor,
                                  ),
                                  const SizedBox(width: 10),
                                  const Text(
                                    "Tap to select field location",
                                    style: TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ))
                  ],
                ),
              ),
              actions: <Widget>[
                Container(
                  height: MediaQuery.of(context).size.height * 0.04,
                  width: MediaQuery.of(context).size.width * 1,
                  decoration: const BoxDecoration(
                    color: Colors.transparent,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height * 0.04,
                        width: MediaQuery.of(context).size.width * 0.3,
                        decoration: const BoxDecoration(
                          color: Colors.transparent,
                        ),
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.grey.shade300,
                              foregroundColor: Colors.black,
                              shadowColor: Colors.grey),
                          child: const Text(
                            "CANCEL",
                            style: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.04,
                        width: MediaQuery.of(context).size.width * 0.3,
                        decoration: const BoxDecoration(
                          color: Colors.transparent,
                        ),
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.grey.shade300,
                              foregroundColor: Colors.black,
                              shadowColor: Colors.grey),
                          child: const Text(
                            "ADD",
                            style: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ));
  }
}
