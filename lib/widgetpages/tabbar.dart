import 'package:flutter/material.dart';

class TabBarWidget extends StatelessWidget {
  const TabBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        initialIndex: 0,
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: const Text(
              "WhatsApp",
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
            backgroundColor: const Color.fromARGB(255, 47, 109, 49),
            bottom: const TabBar(
              indicatorColor: Color.fromARGB(255, 22, 68, 23),
              tabs: [
                Tab(
                  icon: Icon(
                    Icons.chat,
                    color: Colors.white,
                  ),
                  child: Text(
                    "Chats",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
                Tab(
                  icon: Icon(
                    Icons.circle,
                    color: Colors.white,
                  ),
                  child: Text(
                    "Status",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
                Tab(
                  icon: Icon(
                    Icons.call,
                    color: Colors.white,
                  ),
                  child: Text(
                    "Calls",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              Container(
                child: Center(
                  child: Text(
                    "CHATS",
                    style: TextStyle(fontSize: 30),
                  ),
                ),
              ),
              Container(
                child: Center(
                  child: Text(
                    "STATUS",
                    style: TextStyle(fontSize: 30),
                  ),
                ),
              ),
              Container(
                child: Center(
                  child: Text(
                    "CALLS",
                    style: TextStyle(fontSize: 30),
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
