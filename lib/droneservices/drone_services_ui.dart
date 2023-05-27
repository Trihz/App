import 'package:flutter/material.dart';

class DroneSevicesUI extends StatefulWidget {
  const DroneSevicesUI({super.key});

  @override
  State<DroneSevicesUI> createState() => _DroneSevicesUIState();
}

class _DroneSevicesUIState extends State<DroneSevicesUI>
    with TickerProviderStateMixin {
  /// defining the main colors
  Color mainColor = const Color.fromARGB(255, 43, 145, 46);

  /// widget to display the top contiainer
  Widget topContainer() {
    return Container(
      height: MediaQuery.of(context).size.height * 0.1,
      width: MediaQuery.of(context).size.width * 0.9,
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
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
                "Imagery",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
              ),
            ),
          )
        ],
      ),
    );
  }

  /// container to show the tab bar
  Widget showTabBar(TabController tabController) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.04,
      width: MediaQuery.of(context).size.width * 0.9,
      decoration: BoxDecoration(
          color: mainColor,
          borderRadius: const BorderRadius.all(Radius.circular(5))),
      child: TabBar(
          controller: tabController,
          indicatorColor: Colors.transparent,
          unselectedLabelColor: Colors.black,
          labelColor: Colors.white,
          labelStyle:
              const TextStyle(fontSize: 13, fontWeight: FontWeight.w400),
          tabs: const [
            Tab(
              text: "Drone",
            ),
            Tab(
              text: "Landsat 8",
            ),
            Tab(
              text: "Sentinel",
            ),
          ]),
    );
  }

  /// widget to display the drone services request form
  Widget requestContainer(TabController tabController) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.75,
      width: MediaQuery.of(context).size.width * 1,
      decoration: const BoxDecoration(color: Colors.white),
      child: TabBarView(controller: tabController, children: [
        Container(
          height: MediaQuery.of(context).size.height * 0.8,
          width: MediaQuery.of(context).size.width * 1,
          decoration: const BoxDecoration(color: Colors.white),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                  height: MediaQuery.of(context).size.height * 0.7,
                  width: MediaQuery.of(context).size.width * 0.9,
                  padding: const EdgeInsets.only(top: 10),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.3),
                          spreadRadius: 1,
                          blurRadius: 1,
                          offset: const Offset(0, 1),
                        ),
                      ],
                      borderRadius:
                          const BorderRadius.all(Radius.circular(10))),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Container(
                            padding: const EdgeInsets.only(left: 20, bottom: 5),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "Farm Name",
                                style: TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w400,
                                    color: mainColor),
                              ),
                            ),
                          ),
                          Container(
                              height: MediaQuery.of(context).size.height * 0.05,
                              width: MediaQuery.of(context).size.width * 0.8,
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
                            padding: const EdgeInsets.only(left: 20, bottom: 5),
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
                              height: MediaQuery.of(context).size.height * 0.05,
                              width: MediaQuery.of(context).size.width * 0.8,
                              decoration: const BoxDecoration(
                                  color: Color.fromARGB(0, 255, 255, 255)),
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
                            padding: const EdgeInsets.only(left: 20, bottom: 5),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "Mapping Date",
                                style: TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w400,
                                    color: mainColor),
                              ),
                            ),
                          ),
                          Container(
                              height: MediaQuery.of(context).size.height * 0.05,
                              width: MediaQuery.of(context).size.width * 0.8,
                              decoration: const BoxDecoration(
                                  color: Color.fromARGB(0, 255, 255, 255)),
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
                            padding: const EdgeInsets.only(left: 20, bottom: 5),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "Size of the land",
                                style: TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w400,
                                    color: mainColor),
                              ),
                            ),
                          ),
                          Container(
                              height: MediaQuery.of(context).size.height * 0.05,
                              width: MediaQuery.of(context).size.width * 0.8,
                              decoration: const BoxDecoration(
                                  color: Color.fromARGB(0, 255, 255, 255)),
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
                            padding: const EdgeInsets.only(left: 20, bottom: 5),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "Crop type",
                                style: TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w400,
                                    color: mainColor),
                              ),
                            ),
                          ),
                          Container(
                              height: MediaQuery.of(context).size.height * 0.05,
                              width: MediaQuery.of(context).size.width * 0.8,
                              decoration: const BoxDecoration(
                                  color: Color.fromARGB(0, 255, 255, 255)),
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
                            padding: const EdgeInsets.only(left: 20, bottom: 5),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "Estimated time of mapping",
                                style: TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w400,
                                    color: mainColor),
                              ),
                            ),
                          ),
                          Container(
                              height: MediaQuery.of(context).size.height * 0.05,
                              width: MediaQuery.of(context).size.width * 0.8,
                              decoration: const BoxDecoration(
                                  color: Color.fromARGB(0, 255, 255, 255)),
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
                            padding: const EdgeInsets.only(left: 20, bottom: 5),
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
                              height: MediaQuery.of(context).size.height * 0.05,
                              width: MediaQuery.of(context).size.width * 0.8,
                              decoration: const BoxDecoration(
                                  color: Color.fromARGB(0, 255, 255, 255)),
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
                        height: MediaQuery.of(context).size.height * 0.07,
                        width: MediaQuery.of(context).size.width * 0.8,
                        margin: const EdgeInsets.only(top: 10),
                        decoration:
                            const BoxDecoration(color: Colors.transparent),
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
        const Center(
          child: Text('Landsat'),
        ),
        const Center(
          child: Text('Imagery'),
        )
      ]),
    );
  }

  /// widget to display the cancel and request buttons container
  Widget cancelRequestButton() {
    return Container(
      height: MediaQuery.of(context).size.height * 0.07,
      width: MediaQuery.of(context).size.width * 1,
      decoration: const BoxDecoration(color: Colors.white),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
              height: MediaQuery.of(context).size.height * 0.05,
              width: MediaQuery.of(context).size.width * 0.4,
              decoration: const BoxDecoration(color: Colors.white),
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey.shade300,
                    foregroundColor: Colors.black,
                    shadowColor: Colors.grey,
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5)))),
                child: const Text(
                  "CANCEL",
                  style: TextStyle(fontSize: 13, fontWeight: FontWeight.w600),
                ),
              )),
          Container(
              height: MediaQuery.of(context).size.height * 0.05,
              width: MediaQuery.of(context).size.width * 0.4,
              decoration: const BoxDecoration(color: Colors.white),
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey.shade300,
                    foregroundColor: Colors.black,
                    shadowColor: Colors.grey,
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5)))),
                child: const Text(
                  "PLACE REQUEST",
                  style: TextStyle(fontSize: 13, fontWeight: FontWeight.w600),
                ),
              )),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    TabController tabController = TabController(length: 3, vsync: this);
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height * 1,
        width: MediaQuery.of(context).size.width * 1,
        decoration: const BoxDecoration(color: Colors.white),
        child: Column(
          children: [
            topContainer(),
            showTabBar(tabController),
            requestContainer(tabController),
            cancelRequestButton()
          ],
        ),
      ),
    );
  }
}
