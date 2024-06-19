import 'package:flutter/material.dart';

class RowsCols extends StatelessWidget {
  const RowsCols({super.key});

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: const Text("ROWS & COLUMNS"),
        backgroundColor: Colors.blue,
      ),

      body: Container(
        height: h,
        width: w,
        color: Colors.yellow,

        // Cannot have 2 childs
        // child: Center(
        //   child: Container(
        //     height: 60,
        //     width: 60,
        //     color: Colors.redAccent,
        //   ),
        // ),

        // Row and Wrap [wrap documentation]
        // child: Row(
        //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //   children: [
            // Container(
            //   height: 60,
            //   width: 60,
            //   color: Colors.deepPurple,
            // ),
        //     Container(
        //       height: 60,
        //       width: 60,
        //       color: Colors.blue,
        //     ),
        //     Container(
        //       height: 60,
        //       width: 60,
        //       color: Colors.green,
        //     ),
        //     Container(
        //       height: 60,
        //       width: 60,
        //       color: Colors.deepOrange,
        //     ),
        //     Container(
        //       height: 60,
        //       width: 60,
        //       color: Colors.white,
        //     )
        //   ],
        // ),

        // Columns
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              height: 60,
              width: 60,
              color: Colors.deepPurple,
            ),
            Container(
              height: 60,
              width: 60,
              color: Colors.lightBlue,
            ),
            Container(
              height: 60,
              width: 60,
              color: Colors.black,
            ),
            Container(
              height: 60,
              width: 60,
              color: Colors.white,
            ),
            Container(
              height: 60,
              width: 60,
              color: Colors.grey,
            ),
          ],
        ),
      ),
    );
  }
}