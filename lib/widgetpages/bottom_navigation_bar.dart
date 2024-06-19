import 'package:basic_widgets_app/widgetpages/bottomsheet_widget.dart';
import 'package:basic_widgets_app/widgetpages/drawer.dart';
import 'package:basic_widgets_app/widgetpages/images.dart';
import 'package:basic_widgets_app/widgetpages/snack_bar.dart';
import 'package:flutter/material.dart';

class BottomNavigationBarWidget extends StatefulWidget {
  const BottomNavigationBarWidget({super.key});

  @override
  State<BottomNavigationBarWidget> createState() =>
      _BottomNavigationBarWidgetState();
}

class _BottomNavigationBarWidgetState extends State<BottomNavigationBarWidget> {
  int selectedIndex = 0;

  PageController pageController = PageController();

  // List<Widget> widgets = [
  //   Text('Home'),
  //   Text('Search'),
  //   Text('Account'),
  //   Text('Category'),
  // ];

  void onItemTap(int index) {
    setState(() {
      selectedIndex = index;
    });

    pageController.jumpToPage(index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text(
      //     "Bottom Navigation Bar",
      //     style: TextStyle(
      //         fontWeight: FontWeight.bold, fontSize: 20, color: Colors.white),
      //   ),
      //   backgroundColor: const Color.fromARGB(255, 60, 171, 139),
      // ),
      body: PageView(
        controller: pageController,
        children: const [BottomsheetWidget(), DrawerWidget(), Snack_Bar(), Images()],
      ),
      bottomNavigationBar: BottomNavigationBar(
        // backgroundColor: const Color.fromARGB(255, 60, 171, 139),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Account'),
          BottomNavigationBarItem(
              icon: Icon(Icons.category), label: 'Category'),
        ],
        currentIndex: selectedIndex,
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.white,
        onTap: onItemTap,
      ),
    );
  }
}
