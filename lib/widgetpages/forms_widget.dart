import 'package:flutter/material.dart';

class FormsWidget extends StatefulWidget {
  const FormsWidget({super.key});

  @override
  State<FormsWidget> createState() => _FormsWidgetState();
}

class _FormsWidgetState extends State<FormsWidget> {
  final _formKey = GlobalKey<FormState>();
  String firstName = '';
  String lastName = '';
  String email = '';
  String password = '';

  // FUNCTIONS
  trySubmit() {
    final isValid = _formKey.currentState!.validate(); // null safety

    if (isValid) {
      _formKey.currentState!.save();
      submitForm();
    } else {
      print('Error');
    }
  }

  submitForm() {
    print(firstName);
    print(lastName);
    print(email);
    print(password);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "FORMS WIDGET",
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
        backgroundColor: const Color.fromARGB(255, 255, 165, 56),
      ),
      body: Center(
        child: Container(
          margin: const EdgeInsets.all(10),
          child: Form(
              key: _formKey,
              child: Column(
                children: [
                  // First Name
                  TextFormField(
                    decoration: const InputDecoration(
                      hintText: 'Enter First Name',
                    ),
                    key: const ValueKey('firstName'),
                    validator: (value) {
                      if (value.toString().isEmpty) {
                        return 'First Name should not be empty';
                      } else {
                        return null;
                      }
                    },
                    onSaved: (value) {
                      firstName = value.toString();
                    },
                  ),

                  // Last Name
                  TextFormField(
                    decoration: const InputDecoration(
                      hintText: 'Enter Last Name',
                    ),
                    key: const ValueKey('lastName'),
                    validator: (value) {
                      if (value.toString().isEmpty) {
                        return 'Last Name should not be empty';
                      } else {
                        return null;
                      }
                    },
                    onSaved: (value) {
                      lastName = value.toString();
                    },
                  ),

                  // Email
                  TextFormField(
                    decoration: const InputDecoration(
                      hintText: 'Enter yout Email',
                    ),
                    key: const ValueKey('email'),
                    validator: (value) {
                      if (value.toString().isEmpty) {
                        return 'Email is required';
                      } else {
                        return null;
                      }
                    },
                    onSaved: (value) {
                      email = value.toString();
                    },
                  ),

                  // Password
                  TextFormField(
                    obscureText: true,
                    decoration: const InputDecoration(
                      hintText: 'Enter Password',
                    ),
                    key: const ValueKey('password'),
                    validator: (value) {
                      if (value.toString().length <= 7) {
                        return 'Minimum length of Password should be 8';
                      } else {
                        return null;
                      }
                    },
                    onSaved: (value) {
                      password = value.toString();
                    },
                  ),
                  TextButton(
                      onPressed: () {
                        trySubmit();
                      },
                      child: const Text("Submit"))
                ],
              )),
        ),
      ),
    );
  }
}
