import 'package:agrogis/widgets/navbar.dart';
import 'package:flutter/material.dart';

class HomepageUI extends StatefulWidget {
  const HomepageUI({super.key});

  @override
  State<HomepageUI> createState() => _HomepageUIState();
}

class _HomepageUIState extends State<HomepageUI> {
  /// defining the main colors
  Color mainColor = const Color.fromARGB(255, 43, 145, 46);
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  /// widget to display the company logo
  Widget companylogo() {
    return Container(
        height: 28,
        width: 130,
        margin: const EdgeInsets.only(top: 7),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/company_logo.png'),
            fit: BoxFit.fill,
          ),
        ));
  }

  /// wdget to display the top container
  Widget topContainer() {
    return Container(
      height: MediaQuery.of(context).size.height * 0.09,
      width: MediaQuery.of(context).size.width * 0.95,
      margin: const EdgeInsets.only(right: 3, left: 3, top: 10),
      decoration: BoxDecoration(
        color: mainColor,
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(5),
          bottomRight: Radius.circular(5),
          topLeft: Radius.circular(5),
          topRight: Radius.circular(5),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          GestureDetector(
            onTap: () {
              scaffoldKey.currentState?.openDrawer();
            },
            child: const Icon(
              Icons.menu_rounded,
              color: Colors.white,
              size: 30,
            ),
          ),
          Container(
              height: MediaQuery.of(context).size.height * 0.04,
              width: MediaQuery.of(context).size.width * 0.5,
              decoration: const BoxDecoration(color: Colors.transparent),
              child: const TextField(
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Color.fromARGB(255, 255, 255, 255), width: 0.5),
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Color.fromARGB(255, 255, 255, 255), width: 0.5),
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Color.fromARGB(255, 255, 255, 255), width: 0.5),
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                  ),
                ),
              )),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, '/account');
            },
            child: Container(
              width: 40,
              height: 40,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage('assets/profile.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  /// widget to display the icons container
  Widget iconsContainer() {
    return Container(
      height: MediaQuery.of(context).size.height * 0.12,
      width: MediaQuery.of(context).size.width * 0.8,
      margin: const EdgeInsets.only(top: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.4),
            spreadRadius: 1,
            blurRadius: 1,
            offset: const Offset(0, 0),
          ),
        ],
      ),
      child: Center(
        child: Container(
          height: MediaQuery.of(context).size.height * 0.1,
          padding: const EdgeInsets.only(top: 20),
          decoration: const BoxDecoration(
            color: Colors.transparent,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/myfarm');
                },
                child: Column(
                  children: [
                    Container(
                        height: 25,
                        width: 25,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/my_farm.png'),
                            fit: BoxFit.fill,
                          ),
                        )),
                    const Text(
                      "My Farm",
                      style:
                          TextStyle(fontSize: 10, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/droneservices');
                },
                child: Column(
                  children: [
                    Container(
                        height: 25,
                        width: 25,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/drone.png'),
                            fit: BoxFit.fill,
                          ),
                        )),
                    const Text(
                      "Imagery",
                      style:
                          TextStyle(fontSize: 10, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/soilanalysis');
                },
                child: Column(
                  children: [
                    Container(
                        height: 25,
                        width: 25,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/soil_analysis.png'),
                            fit: BoxFit.fill,
                          ),
                        )),
                    const Text(
                      "Soil analysis",
                      style:
                          TextStyle(fontSize: 10, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/weather');
                },
                child: Column(
                  children: [
                    Container(
                        height: 25,
                        width: 25,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/weather.png'),
                            fit: BoxFit.fill,
                          ),
                        )),
                    const Text(
                      "Weather",
                      style:
                          TextStyle(fontSize: 10, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/cart');
                },
                child: Column(
                  children: [
                    Container(
                        height: 25,
                        width: 25,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/cart.png'),
                            fit: BoxFit.fill,
                          ),
                        )),
                    const Text(
                      "Cart",
                      style:
                          TextStyle(fontSize: 10, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// widget to display the latest news container
  Widget latestNews() {
    return Container(
      height: MediaQuery.of(context).size.height * 0.3,
      width: MediaQuery.of(context).size.width * 0.9,
      margin: const EdgeInsets.only(top: 10),
      decoration: const BoxDecoration(color: Colors.transparent),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.04,
            width: MediaQuery.of(context).size.width * 1,
            decoration: const BoxDecoration(
              color: Colors.transparent,
            ),
            child: const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Latest News",
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
              ),
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.26,
            width: MediaQuery.of(context).size.width * 1,
            decoration: const BoxDecoration(
              color: Colors.transparent,
            ),
            child: ListView.builder(
                itemCount: 5,
                scrollDirection: Axis.horizontal,
                itemBuilder: ((context, index) {
                  return Container(
                    height: MediaQuery.of(context).size.height * 0.26,
                    width: MediaQuery.of(context).size.width * 0.35,
                    margin: const EdgeInsets.only(
                        right: 10, top: 5, bottom: 5, left: 5),
                    decoration: BoxDecoration(boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.3),
                        spreadRadius: 1,
                        blurRadius: 1,
                        offset: const Offset(0, 1),
                      ),
                    ], color: Colors.white),
                    child: Column(
                      children: [
                        Container(
                            height: 80,
                            width: MediaQuery.of(context).size.width * 0.35,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/news_image.png'),
                                fit: BoxFit.fill,
                              ),
                            )),
                        Container(
                          height: MediaQuery.of(context).size.height * 0.06,
                          width: MediaQuery.of(context).size.width * 1,
                          decoration: const BoxDecoration(
                            color: Colors.white,
                          ),
                          child: const Align(
                            alignment: Alignment.center,
                            child: Center(
                              child: Text(
                                "Advancements in Sustainable Farming",
                                style: TextStyle(
                                    fontSize: 11, fontWeight: FontWeight.w500),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height * 0.035,
                          width: MediaQuery.of(context).size.width * 0.3,
                          decoration:
                              const BoxDecoration(color: Colors.transparent),
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.pushNamed(context, '/homepage');
                            },
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white,
                                foregroundColor: mainColor,
                                shadowColor: Colors.grey,
                                shape: const RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(5)))),
                            child: const Text(
                              "READ",
                              style: TextStyle(
                                  fontSize: 11, fontWeight: FontWeight.w500),
                            ),
                          ),
                        )
                      ],
                    ),
                  );
                })),
          ),
        ],
      ),
    );
  }

  /// Widget to display the trending courses container
  Widget trendingCourses() {
    return Container(
      height: MediaQuery.of(context).size.height * 0.3,
      width: MediaQuery.of(context).size.width * 0.9,
      margin: const EdgeInsets.only(top: 10),
      decoration: const BoxDecoration(color: Colors.transparent),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.04,
            width: MediaQuery.of(context).size.width * 1,
            decoration: const BoxDecoration(
              color: Colors.transparent,
            ),
            child: const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Trending Courses",
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
              ),
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.25,
            width: MediaQuery.of(context).size.width * 1,
            decoration: const BoxDecoration(
              color: Colors.transparent,
            ),
            child: ListView.builder(
                itemCount: 5,
                scrollDirection: Axis.horizontal,
                itemBuilder: ((context, index) {
                  return Container(
                    height: MediaQuery.of(context).size.height * 0.25,
                    width: MediaQuery.of(context).size.width * 0.35,
                    margin: const EdgeInsets.only(
                        right: 10, top: 5, bottom: 5, left: 5),
                    decoration: BoxDecoration(boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.3),
                        spreadRadius: 1,
                        blurRadius: 1,
                        offset: const Offset(0, 1),
                      ),
                    ], color: Colors.white),
                    child: Column(
                      children: [
                        Container(
                            height: 80,
                            width: MediaQuery.of(context).size.width * 0.35,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/news_image.png'),
                                fit: BoxFit.fill,
                              ),
                            )),
                        Container(
                          height: MediaQuery.of(context).size.height * 0.06,
                          width: MediaQuery.of(context).size.width * 1,
                          decoration: const BoxDecoration(
                            color: Colors.white,
                          ),
                          child: const Align(
                            alignment: Alignment.center,
                            child: Center(
                              child: Text(
                                "Farming Techniques",
                                style: TextStyle(
                                    fontSize: 11, fontWeight: FontWeight.w500),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height * 0.035,
                          width: MediaQuery.of(context).size.width * 0.3,
                          decoration:
                              const BoxDecoration(color: Colors.transparent),
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.pushNamed(context, '/homepage');
                            },
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white,
                                foregroundColor: mainColor,
                                shadowColor: Colors.grey,
                                shape: const RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(5)))),
                            child: const Text(
                              "CHECK",
                              style: TextStyle(
                                  fontSize: 11, fontWeight: FontWeight.w500),
                            ),
                          ),
                        )
                      ],
                    ),
                  );
                })),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      drawer: const NavDrawer(),
      body: Container(
        height: MediaQuery.of(context).size.height * 1,
        width: MediaQuery.of(context).size.width * 1,
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        child: Column(
          children: [
            topContainer(),
            iconsContainer(),
            latestNews(),
            trendingCourses(),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.1,
            )
          ],
        ),
      ),
    );
  }
}
