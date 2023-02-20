// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unnecessary_import, non_constant_identifier_names, unused_element

import 'dart:ui';
import "dart:async";

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: DateApp(),
    );
  }
}

class DateApp extends StatefulWidget {
  const DateApp({super.key});

  @override
  State<DateApp> createState() => _DateAppState();
}

class _DateAppState extends State<DateApp> {
  String hour = "";
  String min = "";
  String sec = "";
  String year = "";
  String month = "";
  String dayNumber = "";
  String dayweek = "";
  changeeverysecond() {
    Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        // time
        hour = DateTime.now().hour.toString();
        min = DateTime.now().minute.toString();
        sec = DateTime.now().second.toString();

        // dates
        year = DateTime.now().year.toString();
        month = DateTime.now().month.toString();
        switch (month) {
          case "1":
            month = "january";
            break;
          case "2":
            month = "february";
            break;
          case "3":
            month = "march_";
            break;
        }

        dayNumber = DateTime.now().day.toString();
        dayweek = DateTime.now().weekday.toString();
        switch (dayweek) {
          case "1":
            dayweek = "monday";
            break;
          case "2":
            dayweek = "thursday";
            break;
          case "3":
            dayweek = "wednesday";
            break;
        }
      });
    });
  }

  String qqq = "";
  calledonlyonetime() {
    Timer(Duration(seconds: 10), () {
      setState(() {
        qqq = "🥰سبحان الله وبحمده";
      });
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    changeeverysecond();
    calledonlyonetime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Time & Date App",
          style: TextStyle(fontSize: 27),
        ),
        backgroundColor: Color.fromARGB(255, 57, 73, 80),
      ),
      backgroundColor: Color.fromARGB(255, 33, 40, 43),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Today's Date is $dayweek",
                style: TextStyle(fontSize: 27, color: Colors.white)),
            SizedBox(
              height: 22,
            ),
            Text("$month  $dayNumber ,$year",
                style: TextStyle(fontSize: 27, color: Colors.white)),
            SizedBox(
              height: 22,
            ),
            Text(
                "${hour.padLeft(2, "0")}:${min.padLeft(2, "0")}:${sec.padLeft(2, "0")}",
                style: TextStyle(fontSize: 27, color: Colors.white)),
            SizedBox(
              height: 22,
            ),
            Text(qqq, style: TextStyle(fontSize: 27, color: Colors.white))
          ],
        ),
      ),
    );
  }
}
