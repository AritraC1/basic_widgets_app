import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("BUTTONS AND TYPES"),
        backgroundColor: Colors.lightGreen,
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              style: ButtonStyle(
                padding: WidgetStateProperty.all(const EdgeInsets.all(20)),
                overlayColor: WidgetStateProperty.all(Colors.blue),
                elevation: const WidgetStatePropertyAll(20),
                backgroundColor: WidgetStateProperty.all(Colors.amber)
              ),
              onPressed: () {
                print('This is a TextButton');
              }, 
              child: const Text("Press Me", style: TextStyle(fontSize: 25, color: Colors.white), )
            ),

            const SizedBox(height: 50),

            Container(
              height: 50,
              width: 300,
              child: ElevatedButton(
                style: ButtonStyle(
                  shape: WidgetStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)
                  )),
                  overlayColor: const WidgetStatePropertyAll(Colors.yellow),
                  backgroundColor: const WidgetStatePropertyAll(Colors.blue)
                ),
                onPressed: (){
                  print('This is a ElevatedButton');
                },
                child: const Text("Press Me", style: TextStyle(fontSize: 25, color: Colors.white), )
              ),
            )
          ],
        ),
      ),
    );
  }
}