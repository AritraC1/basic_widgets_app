import 'package:flutter/material.dart';

class Snack_Bar extends StatelessWidget {
  const Snack_Bar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "SNACK BAR",
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.pink,
      ),
      body: Container(
        child: Center(
            child: ElevatedButton(
                onPressed: () {
                  final snackbar = SnackBar(
                      action: SnackBarAction(label: 'Undo', onPressed: () {}),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25)),
                      // padding: EdgeInsets.all(20),
                      behavior: SnackBarBehavior.floating,
                      // backgroundColor: Colors.red,
                      duration: const Duration(milliseconds: 3000),
                      content: Text('This is a snack-bar'));
                  ScaffoldMessenger.of(context).showSnackBar(snackbar);
                },
                child: Text('Show Snack Bar'))),
      ),
    );
  }
}
