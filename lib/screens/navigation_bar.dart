import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islo_tech_test/screens/add_equipments.dart';

class CustomNavigationBar extends StatefulWidget {
  const CustomNavigationBar({Key? key}) : super(key: key);

  @override
  _CustomNavigationBarState createState() => _CustomNavigationBarState();
}

class _CustomNavigationBarState extends State<CustomNavigationBar> {
  int selectedTab = 1;
  static const List<Widget> _pages = [
    AddEquipment(),
    AddEquipment(),
    AddEquipment(),
    AddEquipment(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       bottomNavigationBar: CupertinoTabBar(
         backgroundColor: const Color(0xFF2a2f35),
         onTap: (index){
           setState(() {
              selectedTab = index;
           });
         },
         activeColor: const Color(0xFFc7960d),
         items: [
           BottomNavigationBarItem(label: 'Profile',icon: Icon(Icons.account_circle_outlined, color:  selectedTab == 1?const Color(0xFFc7960d):const Color(0xFFd2d3d4))),
           BottomNavigationBarItem(label: 'Home',icon: Icon(Icons.home_outlined, color:  selectedTab == 2?const Color(0xFFc7960d):const Color(0xFFd2d3d4))),
           BottomNavigationBarItem(label: 'Jobs',icon: Icon(Icons.work_outline, color:  selectedTab == 3?const Color(0xFFc7960d):const Color(0xFFd2d3d4))),
           BottomNavigationBarItem(label: 'Support',icon: Icon(Icons.contact_support_rounded, color:  selectedTab == 4?const Color(0xFFc7960d):const Color(0xFFd2d3d4))),

         ],
       ),
      body: _pages.elementAt(selectedTab),
    );
  }
}
