import 'package:flutter/material.dart';

class MainScreenWidget extends StatelessWidget {
  const MainScreenWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Finance"),
          centerTitle: true,
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(Icons.access_alarm_outlined), label: "text"),
            BottomNavigationBarItem(
                icon: Icon(Icons.access_alarm_outlined), label: "text"),
            BottomNavigationBarItem(
                icon: Icon(Icons.mode_standby), label: "text"),
          ],
          backgroundColor: Colors.black,
          selectedLabelStyle: TextStyle(color: Colors.white),
          unselectedLabelStyle: TextStyle(color: Colors.white),
          unselectedIconTheme: IconThemeData(
            color: Colors.white,
          ),
          selectedIconTheme: IconThemeData(color: Colors.white),
        ),
        body: Column(
          children: [],
        ));
  }
}
