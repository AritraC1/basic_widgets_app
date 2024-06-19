import 'package:flutter/material.dart';

class DrawerWidget extends StatefulWidget {
  const DrawerWidget({super.key});

  @override
  State<DrawerWidget> createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Container(
          color: Colors.lightGreen,
          child: ListView(
            children: [
              DrawerHeader(
                  padding: EdgeInsets.zero,
                  child: Container(
                    // color: Colors.white,
                    padding: const EdgeInsets.all(10),
                    child: const Row(
                      children: [
                        CircleAvatar(
                          radius: 45,
                          backgroundImage: NetworkImage(
                              'https://images.unsplash.com/photo-1635805737707-575885ab0820?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8c3BpZGVybWFufGVufDB8fDB8fHww'),
                        ),
                        SizedBox(width: 16),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Peter Parker",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                            Text(
                              "pete123@gmail.com",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w500),
                            ),
                          ],
                        )
                      ],
                    ),
                  )),
              const ListTile(
                leading: Icon(Icons.folder),
                iconColor: Colors.white,
                title: Text(
                  "My Files",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              const ListTile(
                leading: Icon(Icons.people),
                iconColor: Colors.white,
                title: Text(
                  "Shared with me",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              const ListTile(
                leading: Icon(Icons.star),
                iconColor: Colors.white,
                title: Text(
                  "Starred",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              const ListTile(
                leading: Icon(Icons.delete),
                iconColor: Colors.white,
                title: Text(
                  "Trash",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              const ListTile(
                leading: Icon(Icons.upload),
                iconColor: Colors.white,
                title: Text(
                  "Upload",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Divider(),
              const ListTile(
                leading: Icon(Icons.share),
                iconColor: Colors.white,
                title: Text(
                  "Share Files",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              const ListTile(
                leading: Icon(Icons.logout),
                iconColor: Colors.white,
                title: Text(
                  "Logout",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
      appBar: AppBar(
        title: const Text(
          "DRAWER WIDGET",
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
        ),
        backgroundColor: Colors.lightGreen,
      ),
      body: Container(
        child: const Center(
          child: Text(
            "Hello!!",
            style: TextStyle(fontSize: 30),
          ),
        ),
      ),
    );
  }
}
