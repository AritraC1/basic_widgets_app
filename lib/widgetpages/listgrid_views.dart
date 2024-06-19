import 'package:flutter/material.dart';

class ListGridViews extends StatelessWidget {
  const ListGridViews({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> fruits = ['orange', 'apple', 'mango', 'banana', 'melon'];
    // Map fruitsPerson = {
    //   'fruits': ['orange', 'apple', 'mango', 'banana', 'melon'],
    //   'names': ['David', 'Mini', 'Robert', 'Bini', 'Mika']
    // };

    return Scaffold(
      appBar: AppBar(
        title: const Text("LIST & GRID VIEW"),
        backgroundColor: Colors.indigo,
        elevation: 8,
      ),
      body: Container(
        // LIST VIEW
        // child: ListView.builder(
        //     itemCount: fruits.length,
        //     itemBuilder: (context, index) {
        //       return Card(
        //         child: ListTile(
        //           leading: const Icon(Icons.person),
        //           title: Text(fruitsPerson['fruits'][index]),
        //           subtitle: Text(fruitsPerson['names'][index]),
        //           onTap: () {
        //             print(fruitsPerson['fruits'][index]);
        //           },
        //         ),
        //       );
        //     }),

        // child: GridView(
        //   gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        //     crossAxisCount: 2,
        //     // crossAxisSpacing: 3,
        //     // mainAxisSpacing: 20,
        //     // childAspectRatio: 2/3,
        //   ),
        //   children: const [
        //     Card(
        //       child: Center(
        //           child: Text(
        //         'Orange',
        //         style: TextStyle(fontSize: 20),
        //       )),
        //     ),
        //     Card(
        //       child: Center(
        //           child: Text(
        //         'Orange',
        //         style: TextStyle(fontSize: 20),
        //       )),
        //     ),
        //     Card(
        //       child: Center(
        //           child: Text(
        //         'Orange',
        //         style: TextStyle(fontSize: 20),
        //       )),
        //     ),
        //     Card(
        //       child: Center(
        //           child: Text(
        //         'Orange',
        //         style: TextStyle(fontSize: 20),
        //       )),
        //     ),
        //     Card(
        //       child: Center(
        //           child: Text(
        //         'Orange',
        //         style: TextStyle(fontSize: 20),
        //       )),
        //     ),
        //     Card(
        //       child: Center(
        //           child: Text(
        //         'Orange',
        //         style: TextStyle(fontSize: 20),
        //       )),
        //     ),
        //     Card(
        //       child: Center(
        //           child: Text(
        //         'Orange',
        //         style: TextStyle(fontSize: 20),
        //       )),
        //     ),
        //     Card(
        //       child: Center(
        //           child: Text(
        //         'Orange',
        //         style: TextStyle(fontSize: 20),
        //       )),
        //     ),
        //     Card(
        //       child: Center(
        //           child: Text(
        //         'Orange',
        //         style: TextStyle(fontSize: 20),
        //       )),
        //     ),
        //     Card(
        //       child: Center(
        //           child: Text(
        //         'Orange',
        //         style: TextStyle(fontSize: 20),
        //       )),
        //     )
        //   ],
        // ),

        child: GridView.builder(
            itemCount: fruits.length,
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 5),
            itemBuilder: (context, index) {
              return Card(
                child: Center(
                  child: Text(fruits[index]),
                ),
              );
            }),
      ),
    );
  }
}
