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
          ListTile(
            leading: Image.asset('assets/weather.png'),
            title: const Text(
              "Weather",
              style: TextStyle(fontSize: 13, fontWeight: FontWeight.w500),
            ),
            onTap: () => {Navigator.pushNamed(context, '/weather')},
          ),
          ListTile(
            leading: Image.asset('assets/decision_support.png'),
            title: const Text(
              "Decision Support",
              style: TextStyle(fontSize: 13, fontWeight: FontWeight.w500),
            ),
            onTap: () => {},
          ),
          ListTile(
            leading: Image.asset('assets/soil_analysis.png'),
            title: const Text(
              "Soil Analysis",
              style: TextStyle(fontSize: 13, fontWeight: FontWeight.w500),
            ),
            onTap: () => {},
          ),
          ListTile(
            leading: Image.asset('assets/issues.png'),
            title: const Text(
              "Issues",
              style: TextStyle(fontSize: 13, fontWeight: FontWeight.w500),
            ),
            onTap: () => {Navigator.pushNamed(context, '/issues')},
          ),
          ListTile(
            leading: Image.asset('assets/pests_diseases.png'),
            title: const Text(
              "Pest and Disease",
              style: TextStyle(fontSize: 13, fontWeight: FontWeight.w500),
            ),
            onTap: () => {},
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.53),
          Center(
            child: Container(
              height: MediaQuery.of(context).size.height * 0.04,
              width: MediaQuery.of(context).size.width * 0.4,
              decoration: const BoxDecoration(
                color: Colors.white,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(Icons.task),
                  GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, '/manuals');
                      },
                      child: Icon(Icons.picture_as_pdf)),
                  Icon(Icons.help)
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
