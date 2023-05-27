// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:privacy_policy_generator_app/data.dart';
import 'package:privacy_policy_generator_app/policy_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _mykey = GlobalKey<FormState>();
  TextEditingController cAppName = TextEditingController();
  TextEditingController cContactNo = TextEditingController();
  TextEditingController cLocation = TextEditingController();
  TextEditingController cEmail = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Privacy Policy Generator"),
        ),
        body: Form(
          key: _mykey,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  //App Name
                  TextFormField(
                    controller: cAppName,
                    decoration: InputDecoration(
                      labelText: "App Name",
                      hintText: "Enter App Name",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Please Enter App Name";
                      }
                      return null;
                    },
                  ),
                  SizedBox(
                    height: 10,
                  ),

                  //Contact No
                  TextFormField(
                    controller: cContactNo,
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                      labelText: "Contact No",
                      hintText: "Enter Contact No",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Please Enter Contact No";
                      }
                      return null;
                    },
                  ),
                  SizedBox(
                    height: 10,
                  ),

                  //Address
                  TextFormField(
                    controller: cLocation,
                    decoration: InputDecoration(
                      labelText: "Location",
                      hintText: "Enter Location",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Please Enter Location";
                      }
                      return null;
                    },
                  ),
                  SizedBox(
                    height: 10,
                  ),

                  //Email
                  TextFormField(
                    controller: cEmail,
                    decoration: InputDecoration(
                      labelText: "Email",
                      hintText: "Enter Email",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Please Enter Email";
                      }
                      if (!isValidEmail(value)) {
                        return "Please Enter Correct Email";
                      }
                      return null;
                    },
                  ),
                  SizedBox(
                    height: 10,
                  ),

                  //Button
                  MaterialButton(
                    onPressed: () {
                      if (_mykey.currentState!.validate()) {
                        Policy p = Policy(cAppName.text, cContactNo.text,
                            cLocation.text, cEmail.text);
                        //Move to other screen
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => PolicyPage(p)),
                        );
                      } else {
                        showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                title: Text("Error"),
                                content: Text("Please Enter All Details"),
                                actions: [
                                  MaterialButton(
                                    child: Text("OK"),
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                  )
                                ],
                              );
                            });
                      }
                    },
                    color: Colors.indigo,
                    child: Text(
                      "Generate",
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}

bool isValidEmail(String email) {
  // Regular expression for email validation
  final RegExp emailRegex =
      RegExp(r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$');

  return emailRegex.hasMatch(email);
}
