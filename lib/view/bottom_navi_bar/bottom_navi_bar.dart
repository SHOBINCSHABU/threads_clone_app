import 'package:flutter/material.dart';
import 'package:threads_clone_app/core/constants/colors_constants.dart';
import 'package:threads_clone_app/view/activity_screen/activity_screen.dart';
import 'package:threads_clone_app/view/home_screen/home_screen.dart';
import 'package:threads_clone_app/view/post_screen/post_screen.dart';
import 'package:threads_clone_app/view/profile_screen/profile_screen.dart';
import 'package:threads_clone_app/view/search_screen/search_screen.dart';


class bottomNavigationBarScreen extends StatefulWidget {
  const bottomNavigationBarScreen({super.key});

  @override
  State<bottomNavigationBarScreen> createState() =>
      _bottomNavigationBarScreenState();
}

class _bottomNavigationBarScreenState extends State<bottomNavigationBarScreen> {
  List<Widget> ScreenList = [
    HomeScreen(),
    SearchScreen(),
    PostScreen(),
    ActivityScreen(),
    Profilescreen()
  ];

  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScreenList[selectedIndex],
      bottomNavigationBar: SizedBox(
        child: BottomNavigationBar(
          selectedItemColor: ColorConstants.primaryBlack,
          onTap: (value) {
            if (value != 2) {
              selectedIndex = value;
              setState(() {});
            } else {
              Navigator.push(
                context, MaterialPageRoute(
                  builder: (context) => PostScreen()
                  ),
                  );
            }
          },
        type: BottomNavigationBarType.fixed,
        currentIndex: selectedIndex,
        items: [
          const BottomNavigationBarItem(
            icon: Icon(
              Icons.home_filled,), 
              label: ""),
          const BottomNavigationBarItem(
            icon: Icon(Icons.search,), 
            label: ""),
          const BottomNavigationBarItem(
            icon: Icon(
              Icons.note_alt_outlined), 
              label: ""),
          const BottomNavigationBarItem(
              icon: Icon(Icons.favorite_border_outlined,), 
              label: ""),
          const BottomNavigationBarItem(
              icon: Icon(Icons.person), 
              label: "")
        ],
      ),),
    );
  }
}
