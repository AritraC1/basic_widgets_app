import 'package:flutter/material.dart';

class BottomsheetWidget extends StatelessWidget {
  const BottomsheetWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "ALERT DIALOG",
          style: TextStyle(
              fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        backgroundColor: const Color.fromARGB(255, 0, 132, 255),
      ),
      body: Center(
        child: ElevatedButton(
            style: const ButtonStyle(
              backgroundColor:
                  WidgetStatePropertyAll(Color.fromARGB(254, 69, 165, 255)),
            ),
            onPressed: () {
              showModalBottomSheet(
                  backgroundColor: Colors.orangeAccent,
                  // shape: RoundedRectangleBorder(borderRadius: B),
                  context: context,
                  builder: (context) {
                    return const Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        ListTile(
                          title: Text("Orange"),
                          subtitle: Text("Color"),
                        ),
                        ListTile(
                          title: Text("Lemon"),
                          subtitle: Text("Fruit"),
                        ),
                        ListTile(
                          title: Text("Red"),
                          subtitle: Text("Color"),
                        ),
                        ListTile(
                          title: Text("Blue"),
                          subtitle: Text("Sky"),
                        ),
                        ListTile(
                          title: Text("Black"),
                          subtitle: Text("Hole"),
                        )
                      ],
                    );
                  });
            },
            child: const Text(
              "Show Bottom Sheet",
              style: TextStyle(color: Colors.white),
            )),
      ),
    );
  }
}
