// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:assignment_1/widgets/my_helpbutton.dart';
import 'package:assignment_1/widgets/my_textbutton.dart';
import 'package:assignment_1/widgets/my_textfield.dart';
import 'package:flutter/material.dart';

class Registeremailpage extends StatefulWidget {
  const Registeremailpage({super.key});

  @override
  State<Registeremailpage> createState() => _RegisterpageState();
}

class _RegisterpageState extends State<Registeremailpage> {
  final TextEditingController email = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1c1d22),
      appBar: AppBar(
        backgroundColor: Color(0xff1c1d22),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          color: Colors.white,
          onPressed: () {},
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              SizedBox(height: 16),
              Text(
                "Enter phone or email!",
                style: TextStyle(
                  fontFamily: "MontserratBold",
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
              SizedBox(height: 24),
              Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: Row(
                  children: [
                    Expanded(
                      child: MyTextbutton(
                        backgroundColor: Color(0xFF17161c),
                        onPressed: () {},
                        text: "Phone",
                        textColor: Color(0xFFf3f3f3),
                        borderRadius: 4,
                      ),
                    ),
                    Expanded(
                      child: MyTextbutton(
                        backgroundColor: Color(0xFF32323c),
                        onPressed: () {},
                        text: "Email",
                        textColor: Color(0xFFf3f3f3),
                        borderRadius: 4,
                      ),
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  Container(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Email",
                      style: TextStyle(
                        color: Color(0xFF777a83),
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 4, bottom: 8),
                    child: MyTextfield(
                      hintText: "Email",
                      isObsecure: false,
                      controller: email,
                      onIconPressed: () {},
                    ),
                  ),
                  MyHelpbutton(
                      text: "View our Privacy Policy", onPressed: () {}),
                  MyTextbutton(
                    text: "Next",
                    onPressed: () {},
                    backgroundColor: Color(0xFF5865f2),
                    textColor: Color(0xFFf3f3f3),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
