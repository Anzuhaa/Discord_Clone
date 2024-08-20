// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class MyTextfield extends StatelessWidget {
  final String hintText;
  final bool isObsecure;
  final IconData? icons;
  final Color? colors;
  final TextEditingController controller;
  final VoidCallback onIconPressed;

  const MyTextfield({
    super.key,
    required this.hintText,
    required this.isObsecure,
    this.icons,
    required this.controller,
    required this.onIconPressed,
    this.colors,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 8),
      child: TextField(
        style: TextStyle(
          fontFamily: 'MontserratSemi',
          color: Colors.white,
        ),
        obscureText: isObsecure,
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
          hintText: hintText,
          hintStyle: TextStyle(
            fontFamily: 'MontserratSemi',
            color: Color(0xFF777a83),
          ),
          suffixIcon: GestureDetector(
            onTap: onIconPressed,
            child: Icon(
              icons,
              color: colors,
            ),
          ),
        ),
        controller: controller,
      ),
    );
  }
}
