import 'package:app/page/homepage.dart';
import 'package:app/page/listpatient.dart';
import 'package:app/page/notification.dart';
import 'package:app/page/profil.dart';
import 'package:flutter/material.dart';

class Myhome extends StatefulWidget {
  const Myhome({super.key});

  @override
  State<Myhome> createState() => _MyhomeState();
}

class _MyhomeState extends State<Myhome> {
  int index = 0;
  final Screen = [home_page(), patient_list(), notification(), ProfilePage()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Screen[index],
      bottomNavigationBar: NavigationBarTheme(
        data: NavigationBarThemeData(
            indicatorColor: Color(0xffCDE9F1),
            labelTextStyle: MaterialStateProperty.all(
              TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
            )),
        child: NavigationBar(
            height: 80,
            backgroundColor: Colors.transparent,
            selectedIndex: index,
            onDestinationSelected: (index) =>
                setState(() => this.index = index),
            destinations: const [
              NavigationDestination(
                  icon: Icon(Icons.home_outlined), label: 'Aceuil'),
              NavigationDestination(
                  icon: Icon(Icons.list_outlined), label: 'liste'),
              NavigationDestination(
                  icon: Icon(Icons.notifications_outlined),
                  label: 'notification'),
              NavigationDestination(
                  icon: Icon(Icons.person_outline), label: 'profile'),
            ]),
      ),
    );
  }
}
