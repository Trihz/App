import 'package:agrogis/Login/logic_ui.dart';
import 'package:agrogis/SignUp/signup_ui.dart';
import 'package:agrogis/account/account.dart';
import 'package:agrogis/bottom_navbar/bottom_navbar_ui.dart';
import 'package:agrogis/cart/cart_ui.dart';
import 'package:agrogis/cart/subscription_details.dart';
import 'package:agrogis/droneservices/drone_services_ui.dart';
import 'package:agrogis/homepage/homepage_ui.dart';
import 'package:agrogis/issues/issues.dart';
import 'package:agrogis/landing/landing_page_ui.dart';
import 'package:agrogis/manuals/manuals.dart';
import 'package:agrogis/myfarm/myfarm.dart';
import 'package:agrogis/myplans/manage_plane.dart';
import 'package:agrogis/myplans/myplans.dart';
import 'package:agrogis/soilanalysis/soilanalysis.dart';
import 'package:agrogis/splashscreen/splashscreen_ui.dart';
import 'package:agrogis/weather/weather.dart';
import 'package:agrogis/weather/weather_stations.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const SplashScreenUI(),
      routes: {
        '/signup': (context) => const SignUpUI(),
        '/login': (context) => const LoginUI(),
        '/landingpage': (context) => const LandingPageUI(),
        '/homepage': (context) => const HomepageUI(),
        '/bottomnavbar': (context) => const BottomNavBar(),
        '/cart': (context) => const CartUI(),
        '/account': (context) => const AccountUI(),
        '/weather': (context) => const Weather(),
        '/myfarm': (context) => const MyFarm_UI(),
        '/droneservices': (context) => const DroneSevicesUI(),
        '/soilanalysis': (context) => const SoilAnalysisUI(),
        '/manuals': (context) => const ManualsUI(),
        '/myplans': (context) => const MyPlans(),
        '/issues': (context) => const IssuesUI(),
        '/weatherstations': (context) => const WeatherStations(),
        '/manageplan': (context) => const ManagePlan(),
        '/subscriptiondetails': (context) => const SubscriptionDetails(),
      },
    );
  }
}
