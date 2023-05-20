import 'package:flutter/material.dart';

class NavDrawer extends StatefulWidget {
  const NavDrawer({super.key});

  @override
  State<NavDrawer> createState() => _NavDrawerState();
}

class _NavDrawerState extends State<NavDrawer> {
  Color mainColor = Color.fromARGB(255, 43, 145, 46);

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
            leading: Image.asset('assets/pdf.png'),
            title: const Text(
              "Manuals",
              style: TextStyle(fontSize: 13, fontWeight: FontWeight.w500),
            ),
            onTap: () => {Navigator.pushNamed(context, '/manuals')},
          ),
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
            onTap: () => {},
          ),
          ListTile(
            leading: Image.asset('assets/pests_diseases.png'),
            title: const Text(
              "Pest and Disease",
              style: TextStyle(fontSize: 13, fontWeight: FontWeight.w500),
            ),
            onTap: () => {},
          ),
        ],
      ),
    );
  }
}
