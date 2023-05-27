import 'package:flutter/material.dart';

class WeatherStations extends StatefulWidget {
  const WeatherStations({super.key});

  @override
  State<WeatherStations> createState() => _WeatherStationsState();
}

class _WeatherStationsState extends State<WeatherStations> {
  /// defining the main colors
  Color mainColor = const Color.fromARGB(255, 43, 145, 46);

  /// container to display custom app bar
  Widget appBar() {
    return Container(
      height: MediaQuery.of(context).size.height * 0.08,
      width: MediaQuery.of(context).size.width * 0.9,
      decoration: const BoxDecoration(color: Colors.transparent),
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
            width: MediaQuery.of(context).size.width * 0.6,
            decoration: const BoxDecoration(color: Colors.transparent),
            child: const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Weather Stations",
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: Colors.black),
              ),
            ),
          )
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
            Container(
              height: MediaQuery.of(context).size.height * 0.23,
              width: MediaQuery.of(context).size.width * 1,
              margin: const EdgeInsets.only(left: 3, right: 3),
              decoration: const BoxDecoration(
                color: Colors.white,
              ),
              child: Column(
                children: [appBar()],
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.77,
              width: MediaQuery.of(context).size.width * 1,
              decoration: const BoxDecoration(
                color: Colors.white,
              ),
              child: const Column(
                children: [],
              ),
            ),
          ],
        ),
      ),
    );
    ;
  }
}
