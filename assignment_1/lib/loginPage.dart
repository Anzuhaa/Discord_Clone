// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({super.key});

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  bool _obscurePassword = true;

  void _togglePasswordVisibility() {
    setState(() {
      _obscurePassword = !_obscurePassword;
    });
  }

  final TextEditingController _controller = TextEditingController();

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
        child: Container(
          color: Color(0xff1c1d22),
          child: Column(
            children: [
              SizedBox(height: 16),
              Text(
                "Welcome back!",
                style: TextStyle(
                  fontFamily: "MontserratBold",
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
              SizedBox(height: 4),
              Text(
                "We're so excited to see you again!",
                style: TextStyle(
                  fontFamily: "MontserratMedi",
                  color: Color(0xFF777a83),
                  fontSize: 16,
                ),
              ),
              Container(
                alignment: Alignment.topLeft,
                margin: EdgeInsets.only(top: 40),
                padding: EdgeInsets.all(8.0),
                child: Text(
                  textAlign: TextAlign.left,
                  "Account information",
                  style: TextStyle(
                    fontFamily: 'MontserratSemi',
                    color: Color(0xFF777a83),
                    fontSize: 14,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(8.0),
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
                    hintText: "Email or Phone Number",
                    hintStyle: TextStyle(
                      fontFamily: 'MontserratSemi',
                      color: Color(0xFF777a83),
                    ),
                    suffixIcon: Padding(
                      padding: EdgeInsets.only(right: 8.0),
                      child: IconButton(
                        icon: Icon(Icons.clear, color: Color(0xFF777a83)),
                        onPressed: () {
                          _controller.clear();
                        },
                      ),
                    ),
                  ),
                  controller: _controller,
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 4, bottom: 8, left: 8, right: 8),
                child: TextField(
                  obscureText: _obscurePassword,
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
                    hintText: "Password",
                    hintStyle: TextStyle(
                      fontFamily: 'MontserratSemi',
                      color: Color(0xFF777a83),
                    ),
                    suffixIcon: GestureDetector(
                      onTap: _togglePasswordVisibility,
                      child: Padding(
                        padding: EdgeInsets.only(right: 8.0),
                        child: Icon(
                          _obscurePassword
                              ? Icons.visibility
                              : Icons.visibility_off,
                          color: Color(0xFFc1c1c9),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Container(
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
                    "Forgot your password?",
                    style: TextStyle(
                      fontFamily: 'MontserratSemi',
                      color: Color(0xFF2891d5),
                      fontSize: 10,
                    ),
                  ),
                ),
              ),
              Container(
                height: 20,
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.only(top: 2, bottom: 8),
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
                    "Use a password manager?",
                    style: TextStyle(
                      fontFamily: 'MontserratSemi',
                      color: Color(0xFF2891d5),
                      fontSize: 10,
                    ),
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                height: 60,
                padding: EdgeInsets.all(8),
                child: TextButton.icon(
                  onPressed: () {},
                  label: Text(
                    "Log In",
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
              Container(
                width: double.infinity,
                padding: EdgeInsets.all(8),
                child: TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    backgroundColor: Color(0xff1c1d22),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4.0),
                    ),
                  ),
                  child: Text(
                    "Or, sign in with passkey",
                    style: TextStyle(
                      color: Color(0xFF2891d5),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
