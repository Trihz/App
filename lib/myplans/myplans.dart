import 'package:flutter/material.dart';

class MyPlans extends StatefulWidget {
  const MyPlans({super.key});

  @override
  State<MyPlans> createState() => _MyPlansState();
}

class _MyPlansState extends State<MyPlans> {
  /// defining the main colors
  Color mainColor = const Color.fromARGB(255, 43, 145, 46);

  /// widget to display the top contiainer
  Widget topContainer() {
    return Container(
      height: MediaQuery.of(context).size.height * 0.1,
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
                "My Plans",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
              ),
            ),
          )
        ],
      ),
    );
  }

  /// widget for displaying all the plans for the user
  Widget myPlans() {
    return Container(
      height: MediaQuery.of(context).size.height * 0.4,
      width: MediaQuery.of(context).size.width * 0.9,
      padding: const EdgeInsets.only(top: 10),
      decoration: const BoxDecoration(color: Colors.white),
      child: ListView.builder(
          itemCount: 1,
          scrollDirection: Axis.vertical,
          itemBuilder: ((context, index) {
            return Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Stack(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.height * 0.35,
                          width: MediaQuery.of(context).size.width * 0.45,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color:
                                      const Color.fromARGB(255, 119, 119, 119)
                                          .withOpacity(0.2),
                                  spreadRadius: 1,
                                  blurRadius: 1,
                                  offset: const Offset(0, 1),
                                ),
                              ],
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(5))),
                          child: Column(
                            children: [
                              Container(
                                  height: 90,
                                  width:
                                      MediaQuery.of(context).size.width * 0.42,
                                  decoration: const BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage(
                                          'assets/subscription_photo.png'),
                                      fit: BoxFit.fill,
                                    ),
                                  )),
                              Container(
                                height:
                                    MediaQuery.of(context).size.height * 0.12,
                                width: MediaQuery.of(context).size.width * 0.5,
                                margin: const EdgeInsets.only(
                                    right: 10, left: 10, bottom: 5, top: 19),
                                decoration: const BoxDecoration(
                                  color: Colors.white,
                                ),
                                child: const Text(
                                  "This is a free basic Package built for introduction to AgroGISfor a maximum of 5 farms Management with limited features",
                                  style: TextStyle(
                                      fontSize: 11,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                              Container(
                                  height:
                                      MediaQuery.of(context).size.height * 0.05,
                                  width:
                                      MediaQuery.of(context).size.width * 0.5,
                                  margin: const EdgeInsets.only(
                                      right: 10, left: 10, bottom: 5, top: 5),
                                  decoration: BoxDecoration(
                                      color: mainColor,
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(13))),
                                  child: Center(
                                    child: Container(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.045,
                                      width: MediaQuery.of(context).size.width *
                                          0.378,
                                      decoration: const BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10))),
                                      child: Center(
                                        child: Text(
                                          "Manage Plan",
                                          style: TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.w500,
                                              color: mainColor),
                                        ),
                                      ),
                                    ),
                                  )),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Positioned(
                      top: 75,
                      left: 5,
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.04,
                        width: MediaQuery.of(context).size.width * 0.28,
                        decoration: BoxDecoration(
                            color: mainColor,
                            borderRadius: const BorderRadius.only(
                                bottomRight: Radius.circular(5))),
                        child: const Center(
                          child: Text(
                            "AgroGIS Starter",
                            style: TextStyle(
                                fontSize: 11,
                                color: Colors.white,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.35,
                  width: MediaQuery.of(context).size.width * 0.4,
                  decoration: const BoxDecoration(color: Colors.white),
                  child: const Column(
                    children: [
                      Text(
                        "Include in your Plan",
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: Colors.black),
                      ),
                    ],
                  ),
                )
              ],
            );
          })),
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
          children: [topContainer(), myPlans()],
        ),
      ),
    );
  }
}
