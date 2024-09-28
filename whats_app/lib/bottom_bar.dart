import 'package:flutter/material.dart';
import 'package:whats_app/constant/colors.dart';
import 'package:whats_app/page/calls.dart';
import 'package:whats_app/page/chat.dart';
import 'package:whats_app/page/communities.dart';
import 'package:whats_app/page/updates.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int selectedIndex = 0;
  List<Widget> pages = [
    const Chat(),
    const Updates(),
    const Communities(),
    const Calls(),
  ];

  void onTappedItem(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedIndex,
          onTap: onTappedItem,
          selectedItemColor: selectedItemColors,
          unselectedItemColor: unselectedColors,
          backgroundColor: bottomBarBgColor,
          type: BottomNavigationBarType.fixed,
          items:  [
            BottomNavigationBarItem(
                icon: selectedIndex==0 ? selectedIndexStyle(Icons.message):Icon(Icons.message),
                label: 'Chat'),
            BottomNavigationBarItem(
                icon: selectedIndex==1 ? selectedIndexStyle(Icons.circle_notifications,):Icon(
                  Icons.circle_notifications,
                ),
                label: 'Updates'),
            BottomNavigationBarItem(
                icon: selectedIndex==2 ? selectedIndexStyle(Icons.groups,):Icon(
                  Icons.groups,
                ),
                label: 'Communities'),
            BottomNavigationBarItem(
                icon: selectedIndex==3 ? selectedIndexStyle(Icons.dialer_sip_outlined,):Icon(
                  Icons.dialer_sip_outlined,
                ),
                label: 'Calls'),
          ]),
    );
  }

  Widget selectedIndexStyle(IconData icon){
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15,vertical: 5),
      decoration: BoxDecoration(
          color:selectedStyleColors,
          borderRadius: BorderRadius.circular(20)
      ),
      child: Icon(icon),
    );
  }

}
