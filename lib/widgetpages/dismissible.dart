import 'package:flutter/material.dart';

class DismissibleWidget extends StatefulWidget {
  const DismissibleWidget({super.key});

  @override
  State<DismissibleWidget> createState() => _DismissibleWidgetState();
}

class _DismissibleWidgetState extends State<DismissibleWidget> {
  List<String> fruits = ['orange', 'apple', 'mango', 'banana', 'melon'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "DISMISSIBLE PACKAGES",
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.teal,
      ),
      body: ListView.builder(
          itemCount: fruits.length,
          itemBuilder: (context, index) {
            final fruit = fruits[index];
            return Dismissible(
              key: Key(fruit),
              background: Container(
                color: Colors.red,
              ),
              secondaryBackground: Container(
                color: Colors.green,
              ),
              child: Card(
                color: Colors.lightBlue,
                child: ListTile(
                  title: Text(fruits[index]),
                ),
              ),
              onDismissed: (direction) {
                if (direction == DismissDirection.startToEnd) {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    duration: const Duration(milliseconds: 1000),
                    behavior: SnackBarBehavior.floating,
                    content: Text(fruits[index]),
                    backgroundColor: Colors.red,
                  ));
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    duration: const Duration(milliseconds: 1000),
                    behavior: SnackBarBehavior.floating,
                    content: Text(fruits[index]),
                    backgroundColor: Colors.green,
                  ));
                }
              },
            );
          }),
    );
  }
}
