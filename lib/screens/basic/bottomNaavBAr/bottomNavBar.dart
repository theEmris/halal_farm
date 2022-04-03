import 'package:flutter/material.dart';
import 'package:halal_farm/core/components/pageNames.dart';
import 'package:halal_farm/provider/bottomNavProvider.dart';
import 'package:provider/provider.dart';

class BottomNavBar extends StatefulWidget {
   BottomNavBar({Key? key}) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageNAmes.thispages[context.watch<bottomNavProvider>().selectedPagenumber],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            backgroundColor: Colors.black,
            label: "fdfs"
            ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            backgroundColor: Colors.black,
            label: "fdfs"

            ),
            BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            backgroundColor: Colors.black
     ,       label: "fdfs"
     
            ),
            BottomNavigationBarItem(
            icon: Icon(Icons.person),
            backgroundColor: Colors.black
      ,      label: "fdfs"
      
            ),
        ],
      currentIndex: context.watch<bottomNavProvider>().selectedPagenumber,
      selectedIconTheme: IconThemeData(color: Colors.green,size: 33),
      selectedItemColor: Colors.greenAccent,
      onTap: context.read<bottomNavProvider>().onItemTapped,
      ),
    );
  }
}

