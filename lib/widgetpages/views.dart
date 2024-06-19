import 'package:flutter/material.dart';

class MyViews extends StatelessWidget {
  const MyViews({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> fruits = ['orange', 'apple', 'mango', 'banana'];

    return Scaffold(
      appBar: AppBar(
        title: const Text("LIST & GRID VIEWS"),
        backgroundColor: Colors.indigo,
        elevation: 8,
      ),
      
      body: Container(
        child: ListView.builder(
          itemCount: fruits.length,
          itemBuilder: (context, index) {
            return Card(
              child: ListTile(
                title: Text(fruits[index]),
              ),
            );
          }
        ),
      ),
    );
  }
}