import 'package:flutter/material.dart';

class ContainerSize extends StatelessWidget {
  const ContainerSize({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: const Text("CONTAINER & SIZED BOX"),
      ),
      body:  Center(

        // Container
        child: Container(
          padding: const EdgeInsets.all(10),
          height: 100,
          width: 100,
          decoration: const BoxDecoration(
            // borderRadius: BorderRadius.circular(25),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(25),
              bottomRight: Radius.circular(25),
            ),
            color: Colors.cyan,
            boxShadow: [
              BoxShadow(
                blurRadius: 20,
                spreadRadius: 10,
                color: Color.fromARGB(255, 0, 193, 231),
              )
            ]
            // shape: BoxShape.circle,
            ),
          child: Center(
            // child: Text("HELLO", style: TextStyle(fontSize: 20),)
            child: Container(color: const Color.fromARGB(255, 0, 157, 255),),
          ),
        ),
      )

      // Sized Box - cannot add color property

      // Center(
      //   child: SizedBox(
      //     height: 50,
      //     width: 50,
      //     child: Text("HELLO"),
      //   ),
      // ),
    );
  }
}