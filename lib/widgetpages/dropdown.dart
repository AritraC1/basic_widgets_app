import 'package:flutter/material.dart';

class DropdownWidget extends StatefulWidget {
  const DropdownWidget({super.key});

  @override
  State<DropdownWidget> createState() => _DropdownWidgetState();
}

class _DropdownWidgetState extends State<DropdownWidget> {
  String selectedValue = 'Orange';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("DROP DOWN WIDGET"),
        backgroundColor: const Color.fromARGB(255, 70, 81, 142),
      ),
      // backgroundColor: const Color.fromARGB(255, 70, 81, 142),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.all(10),
              height: 70,
              width: MediaQuery.of(context).size.width,
              color: const Color.fromARGB(255, 70, 81, 142),
              child: DropdownButton<String>(
                isExpanded: true,
                dropdownColor: Colors.grey.shade800,
                value: selectedValue,
                icon: const Icon(Icons.arrow_downward_rounded),
                onChanged: (String? newValue) {
                  setState(() {
                    selectedValue = newValue!;
                  });
                },
                items: <String>['Orange', 'Apple', 'Mango', 'Banana', 'Grapes']
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
