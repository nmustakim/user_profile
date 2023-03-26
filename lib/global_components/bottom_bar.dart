import 'package:flutter/material.dart';
import 'package:user_profile/constants/constants.dart';
import 'package:user_profile/screens/notifications.dart';

import '../screens/home.dart';
import '../screens/profile.dart';

class BottomBar extends StatefulWidget {
 final String name,userName,email,age,birthDate;


  BottomBar({super.key, required this.name, required this.userName, required this.email,  required this.age,  required this.birthDate});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _selectedIndex = 0;
   late final List<Widget> _widgetOptions = <Widget>[
     Home(name:widget.name, userName: widget.userName, email: widget.email, age: widget.age, birthDate: widget.birthDate,),
Profile(name:widget.name, userName: widget.userName, email: widget.email, age: widget.age, birthDate: widget.birthDate,),
    const Notifications(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Profile',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'Notifications',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: kPrimaryColor,
        onTap: _onItemTapped,
      ),
    );
  }
}
