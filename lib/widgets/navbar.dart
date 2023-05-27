import 'package:flutter/material.dart';

class NavDrawer extends StatefulWidget {
  const NavDrawer({super.key});

  @override
  State<NavDrawer> createState() => _NavDrawerState();
}

class _NavDrawerState extends State<NavDrawer> {
  Color mainColor = const Color.fromARGB(255, 43, 145, 46);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: MediaQuery.of(context).size.width * 0.8,
      backgroundColor: Colors.white,
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          SizedBox(height: MediaQuery.of(context).size.height * 0.07),
          Container(
            height: MediaQuery.of(context).size.height * 0.15,
            width: MediaQuery.of(context).size.width * 1,
            decoration: const BoxDecoration(
              color: Colors.transparent,
            ),
            child: Center(
              child: Container(
                  height: 30,
                  width: 120,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/company_logo.png'),
                      fit: BoxFit.fill,
                    ),
                  )),
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.78,
            width: MediaQuery.of(context).size.width * 1,
            decoration: BoxDecoration(
              color: mainColor,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.4,
                  width: MediaQuery.of(context).size.width * 1,
                  decoration: BoxDecoration(
                    color: mainColor,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height * 0.06,
                        width: MediaQuery.of(context).size.width * 1,
                        margin: const EdgeInsets.only(right: 20, left: 20),
                        padding: const EdgeInsets.only(bottom: 5),
                        decoration: const BoxDecoration(
                            color: Colors.white10,
                            borderRadius: BorderRadius.all(Radius.circular(5))),
                        child: Center(
                          child: ListTile(
                            leading: const Icon(
                              Icons.sunny,
                              color: Colors.black,
                            ),
                            title: const Text(
                              "Weather",
                              style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black),
                            ),
                            onTap: () =>
                                {Navigator.pushNamed(context, '/weather')},
                          ),
                        ),
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.06,
                        width: MediaQuery.of(context).size.width * 1,
                        margin: const EdgeInsets.only(right: 20, left: 20),
                        padding: const EdgeInsets.only(bottom: 5),
                        decoration: const BoxDecoration(
                            color: Colors.white10,
                            borderRadius: BorderRadius.all(Radius.circular(5))),
                        child: ListTile(
                          leading: const Icon(
                            Icons.support,
                            color: Colors.black,
                          ),
                          title: const Text(
                            "Decision Support",
                            style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w500,
                                color: Colors.black),
                          ),
                          onTap: () => {},
                        ),
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.06,
                        width: MediaQuery.of(context).size.width * 1,
                        margin: const EdgeInsets.only(right: 20, left: 20),
                        padding: const EdgeInsets.only(bottom: 5),
                        decoration: const BoxDecoration(
                            color: Colors.white10,
                            borderRadius: BorderRadius.all(Radius.circular(5))),
                        child: ListTile(
                          leading: const Icon(
                            Icons.crop,
                            color: Colors.black,
                          ),
                          title: const Text(
                            "Soil Analysis",
                            style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w500,
                                color: Colors.black),
                          ),
                          onTap: () => {},
                        ),
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.06,
                        width: MediaQuery.of(context).size.width * 1,
                        margin: const EdgeInsets.only(right: 20, left: 20),
                        padding: const EdgeInsets.only(bottom: 5),
                        decoration: const BoxDecoration(
                            color: Colors.white10,
                            borderRadius: BorderRadius.all(Radius.circular(5))),
                        child: ListTile(
                          leading: const Icon(
                            Icons.report_problem,
                            color: Colors.black,
                          ),
                          title: const Text(
                            "Issues",
                            style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w500,
                                color: Colors.black),
                          ),
                          onTap: () =>
                              {Navigator.pushNamed(context, '/issues')},
                        ),
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.06,
                        width: MediaQuery.of(context).size.width * 1,
                        margin: const EdgeInsets.only(right: 20, left: 20),
                        padding: const EdgeInsets.only(bottom: 5),
                        decoration: const BoxDecoration(
                            color: Colors.white10,
                            borderRadius: BorderRadius.all(Radius.circular(5))),
                        child: ListTile(
                          leading:
                              Icon(Icons.pest_control, color: Colors.black),
                          title: const Text(
                            "Pest and Disease",
                            style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w500,
                                color: Colors.black),
                          ),
                          onTap: () => {},
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.04,
                  width: MediaQuery.of(context).size.width * 0.4,
                  decoration: const BoxDecoration(
                    color: Colors.transparent,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Icon(
                        Icons.task,
                        color: Colors.white,
                      ),
                      GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, '/manuals');
                          },
                          child: const Icon(
                            Icons.picture_as_pdf,
                            color: Colors.white,
                          )),
                      const Icon(
                        Icons.help,
                        color: Colors.white,
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
