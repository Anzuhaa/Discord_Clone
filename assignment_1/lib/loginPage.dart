// ignore_for_file: prefer_const_constructors, unused_field

import 'package:assignment_1/widgets/my_helpbutton.dart';
import 'package:assignment_1/widgets/my_text.dart';
import 'package:assignment_1/widgets/my_textbutton.dart';
import 'package:assignment_1/widgets/my_textfield.dart';
import 'package:flutter/material.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({super.key});

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  bool _obscurePassword = true;
  final TextEditingController _controller = TextEditingController();
  final TextEditingController username = TextEditingController();
  final TextEditingController password = TextEditingController();

  void _togglePasswordVisibility() {
    setState(() {
      _obscurePassword = !_obscurePassword;
    });
  }

  void _toggleUsernameClear() {
    setState(() {
      username.clear();
    });
  }

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
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            color: Color(0xff1c1d22),
            padding: EdgeInsets.all(8),
            child: Column(
              children: [
                SizedBox(height: 16),
                MyText(
                  text: "Welcome back!",
                  fontsize: 24,
                  fontfamily: 'MontserratBold',
                  color: Color(0xFFf3f3f3),
                ),
                SizedBox(height: 4),
                MyText(
                  text: "We're so excited to see you again!",
                  fontsize: 16,
                  fontfamily: 'MontserratMedi',
                  color: Color(0xFF777a83),
                ),
                Container(
                  alignment: Alignment.topLeft,
                  margin: EdgeInsets.only(top: 40),
                  padding: EdgeInsets.symmetric(vertical: 8),
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
                MyTextfield(
                  hintText: "Email or Phone Number",
                  isObsecure: false,
                  icons: Icons.clear,
                  colors: Color(0xFFc1c1c9),
                  controller: username,
                  onIconPressed: _toggleUsernameClear,
                ),
                MyTextfield(
                  hintText: "Password",
                  isObsecure: _obscurePassword,
                  icons: _obscurePassword
                      ? Icons.visibility
                      : Icons.visibility_off,
                  colors: Color(0xFFc1c1c9),
                  controller: password,
                  onIconPressed: _togglePasswordVisibility,
                ),
                MyHelpbutton(text: "Forgot your password?", onPressed: () {}),
                MyHelpbutton(text: "Use a password manager?", onPressed: () {}),
                MyTextbutton(
                  text: "Log In",
                  onPressed: () {},
                  backgroundColor: Color(0xFF5865f2),
                  textColor: Color(0xFFf3f3f3),
                ),
                MyTextbutton(
                  text: "Or, sign in with passkey",
                  onPressed: () {},
                  backgroundColor: Color(0xff1c1d22),
                  textColor: Color(0xFF2891d5),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
