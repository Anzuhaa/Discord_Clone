// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class Registeremailpage extends StatefulWidget {
  const Registeremailpage({super.key});

  @override
  State<Registeremailpage> createState() => _RegisterpageState();
}

class _RegisterpageState extends State<Registeremailpage> {
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
              padding:
                  const EdgeInsets.only(left: 16.0, right: 16.0, bottom: 20),
              child: Row(
                children: [
                  Expanded(
                    child: TextButton.icon(
                      onPressed: () {},
                      label: Text(
                        "Phone",
                        style: TextStyle(color: Colors.white),
                      ),
                      style: TextButton.styleFrom(
                        backgroundColor: Color(0xFF17161c),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4.0),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: TextButton.icon(
                      onPressed: () {},
                      label: Text(
                        "Email",
                        style: TextStyle(color: Colors.white),
                      ),
                      style: TextButton.styleFrom(
                        backgroundColor: Color(0xFF32323c),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4.0),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Column(
              children: [
                Container(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 16),
                    child: Text(
                      "Email",
                      style: TextStyle(
                        color: Color(0xFF777a83),
                      ),
                    ),
                  ),
                ),
                Container(
                  padding:
                      EdgeInsets.only(left: 16, right: 16, top: 4, bottom: 8),
                  child: TextField(
                    style: TextStyle(
                      fontFamily: 'MontserratSemi',
                      color: Colors.white,
                    ),
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Color(0xFF32323c),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(4.0),
                        borderSide: BorderSide(
                          color: Color(0xFF1b1b23),
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(4.0),
                        borderSide: BorderSide(
                          color: Color(0xFF1b1b23),
                        ),
                      ),
                      hintText: "Email",
                      hintStyle: TextStyle(
                        fontFamily: 'MontserratSemi',
                        color: Color(0xFF777a83),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8),
                  child: Container(
                    height: 20,
                    alignment: Alignment.topLeft,
                    margin: EdgeInsets.only(top: 4, bottom: 2),
                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 0),
                    child: TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.zero,
                        backgroundColor: Color(0xff1c1d22),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4.0),
                        ),
                      ),
                      child: Text(
                        "View our Privacy Policy",
                        style: TextStyle(
                          fontFamily: 'MontserratSemi',
                          color: Color(0xFF2891d5),
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8, right: 8, top: 10),
                  child: Container(
                    width: double.infinity,
                    height: 60,
                    padding: EdgeInsets.all(8),
                    child: TextButton.icon(
                      onPressed: () {},
                      label: Text(
                        "Next",
                        style: TextStyle(color: Colors.white),
                      ),
                      style: TextButton.styleFrom(
                        backgroundColor: Color(0xFF5865f2),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4.0),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
