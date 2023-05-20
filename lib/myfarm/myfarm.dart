import 'package:flutter/material.dart';

// ignore: camel_case_types
class MyFarm_UI extends StatefulWidget {
  const MyFarm_UI({super.key});

  @override
  State<MyFarm_UI> createState() => _MyFarm_UIState();
}

// ignore: camel_case_types
class _MyFarm_UIState extends State<MyFarm_UI> {
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
              height: 28,
              width: 130,
              margin: const EdgeInsets.only(top: 7),
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/company_logo.png'),
                  fit: BoxFit.fill,
                ),
              ))
        ],
      ),
    );
  }

  /// widget for displaying farm details
  Widget farmDetails() {
    return Align(
      alignment: Alignment.center,
      child: Container(
        height: MediaQuery.of(context).size.height * 0.05,
        width: MediaQuery.of(context).size.width * 0.35,
        margin: const EdgeInsets.only(left: 8),
        decoration: BoxDecoration(
            color: mainColor,
            borderRadius: const BorderRadius.all(Radius.circular(5))),
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              "Farm Details",
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w300,
                  color: Colors.white),
            ),
            Icon(
              Icons.crop,
              color: Colors.white,
              size: 15,
            )
          ],
        ),
      ),
    );
  }

  /// wdiget to display the a section for selecting my fields
  Widget fieldsSelection() {
    return Container(
      height: MediaQuery.of(context).size.height * 0.17,
      width: MediaQuery.of(context).size.width * 1,
      decoration: const BoxDecoration(color: Colors.white),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            padding: const EdgeInsets.only(left: 10),
            child: const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Your Farms",
                style: TextStyle(fontSize: 13, fontWeight: FontWeight.w700),
              ),
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.12,
            width: MediaQuery.of(context).size.width * 0.9,
            decoration: const BoxDecoration(color: Colors.white),
            child: ListView.builder(
                itemCount: 4,
                scrollDirection: Axis.horizontal,
                itemBuilder: ((context, index) {
                  return Container(
                    height: MediaQuery.of(context).size.height * 0.1,
                    width: MediaQuery.of(context).size.width * 0.35,
                    margin: const EdgeInsets.only(
                        right: 10, top: 3, bottom: 3, left: 5),
                    padding: const EdgeInsets.only(left: 5),
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
                            const BorderRadius.all(Radius.circular(5))),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const Text(
                          "Maize Farm",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.w400),
                        ),
                        Container(
                            height: MediaQuery.of(context).size.height * 0.04,
                            width: MediaQuery.of(context).size.width * 0.3,
                            decoration:
                                const BoxDecoration(color: Colors.white),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "VISUALIZE",
                                  style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w700,
                                      color: mainColor),
                                ),
                                const SizedBox(width: 5),
                                Icon(
                                  Icons.arrow_drop_down_circle,
                                  color: mainColor,
                                  size: 18,
                                ),
                              ],
                            ))
                      ],
                    ),
                  );
                })),
          )
        ],
      ),
    );
  }

  /// widget to display the field visualization container
  Widget fieldVisualization() {
    return Container(
      height: MediaQuery.of(context).size.height * 0.55,
      width: MediaQuery.of(context).size.width * 1,
      decoration: const BoxDecoration(color: Colors.white),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            padding: const EdgeInsets.only(left: 10),
            child: const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Farm Visualization",
                style: TextStyle(fontSize: 13, fontWeight: FontWeight.w700),
              ),
            ),
          ),
          Container(
              height: MediaQuery.of(context).size.height * 0.48,
              width: MediaQuery.of(context).size.width * 1,
              margin: const EdgeInsets.only(right: 10),
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/field.png'),
                  fit: BoxFit.fill,
                ),
              )),
        ],
      ),
    );
  }

  /// widget to show the request drone services container
  Widget requestDroneSevicesContainer() {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/droneservices');
      },
      child: Container(
          height: MediaQuery.of(context).size.height * 0.07,
          width: MediaQuery.of(context).size.width * 0.93,
          margin: const EdgeInsets.only(top: 10),
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.3),
                spreadRadius: 3,
                blurRadius: 1,
                offset: const Offset(0, 1),
              ),
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Request Drone Mapping",
                style: TextStyle(fontSize: 13, fontWeight: FontWeight.w700),
              ),
              const SizedBox(width: 20),
              Image.asset("assets/quadcopter.png"),
            ],
          )),
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
            fieldsSelection(),
            SizedBox(height: MediaQuery.of(context).size.height * 0.005),
            fieldVisualization(),
            farmDetails(),
            SizedBox(height: MediaQuery.of(context).size.height * 0.005),
            requestDroneSevicesContainer(),
            SizedBox(height: MediaQuery.of(context).size.height * 0.05),
          ],
        ),
      ),
    );
  }
}
