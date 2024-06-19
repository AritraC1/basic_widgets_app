import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Images extends StatelessWidget {
  const Images({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "IMAGES WIDGETS & TYPES",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
        ),
        backgroundColor: Colors.brown,
      ),
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 20),
            child: const Center(
              child: Text(
                "Doraemon Image 1 - Using NetworkImage",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 30),
            height: 300,
            width: 250,
            // color: Colors.white,
            decoration: BoxDecoration(
                image: const DecorationImage(
                    image: NetworkImage(
                        'https://w0.peakpx.com/wallpaper/445/126/HD-wallpaper-doraemon-cartoon-cat-thumbnail.jpg'),
                    fit: BoxFit.cover),
                borderRadius: BorderRadius.circular(20)),
            // child: Image.network(
            //   'https://w0.peakpx.com/wallpaper/445/126/HD-wallpaper-doraemon-cartoon-cat-thumbnail.jpg',
            //   fit: BoxFit.cover,
            // ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 40),
            child: const Center(
              child: Text(
                "Doraemon Image 2 - Using AssetImage",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 30),
            height: 200,
            width: 300,
            // color: Colors.white,
            decoration: BoxDecoration(
                image: const DecorationImage(
                    image: AssetImage('assets/download1.jpg'),
                    fit: BoxFit.cover),
                borderRadius: BorderRadius.circular(20)),
            // child: Image.network(
            //   'https://w0.peakpx.com/wallpaper/445/126/HD-wallpaper-doraemon-cartoon-cat-thumbnail.jpg',
            //   fit: BoxFit.cover,
            // ),
          ),
        ],
      ),
    );
  }
}
