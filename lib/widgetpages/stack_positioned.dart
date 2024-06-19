import 'package:flutter/material.dart';

class StackPositionedWidget extends StatelessWidget {
  const StackPositionedWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Stack & Positioned Widgets',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        backgroundColor: const Color.fromARGB(255, 255, 108, 196),
      ),

      // Stack
      // body: Container(
      //     color: Colors.amber,
      //     child: Center(
      //         child: Stack(
      //       children: [
      //         // Positioned
      //         Positioned(
      //           bottom: 10,
      //           left: 20,
      //           right: 50,
      //           child: Container(
      //             height: 400,
      //             width: 400,
      //             color: Colors.blue,
      //           ),
      //         ),
      //         Positioned(
      //           top: 120,
      //           right: 50,
      //           child: Container(
      //             height: 300,
      //             width: 300,
      //             color: Colors.green,
      //           ),
      //         ),
      //         Center(
      //           child: Container(
      //             height: 200,
      //             width: 200,
      //             color: Colors.red,
      //           ),
      //         ),
      //       ],
      //     ))),

      body: Stack(
        children: [
          Positioned(
              // top: 100,
              // left: 12.5,
              child: Container(
            height: 300,
            width: MediaQuery.of(context).size.width,
            // width: 400,
            decoration: const BoxDecoration(
                color: Colors.red,
                image: DecorationImage(
                    image: AssetImage('assets/download1.jpg'),
                    fit: BoxFit.cover)),
            // child: Image.asset(),
          )),
          Positioned(
            left: 20,
            top: 20,
            child: Container(
              height: 50,
              width: 50,
              color: Colors.blue,
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 50,
              width: 50,
              color: Colors.blue,
            ),
          )
        ],
      ),
    );
  }
}
