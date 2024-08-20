import 'package:assignment_1/loginPage.dart';
import 'package:assignment_1/registerPhonePage.dart';
import 'package:assignment_1/widgets/my_text.dart';
import 'package:assignment_1/widgets/my_textbutton.dart';
import 'package:flutter/material.dart';

class Startpage extends StatefulWidget {
  const Startpage({super.key});

  @override
  State<Startpage> createState() => _StartpageState();
}

class _StartpageState extends State<Startpage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage(
              "assets/background.jpg",
            ),
            fit: BoxFit.cover),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Spacer(),
                Container(
                  height: 500,
                  child: Column(
                    children: [
                      Image.asset(
                        "assets/discord_logo.png",
                        width: 144,
                        height: 144,
                        fit: BoxFit.cover,
                      ),
                      MyText(
                        text: "WELCOME TO \nDISCORD",
                        fontsize: 44,
                        fontfamily: 'MontserratBold',
                        color: Color(0xFFf3f3f3),
                      ),
                      MyText(
                        text:
                            "Hang out, play games, or just talk. Tap\nbelow to get started!",
                        fontsize: 16,
                        fontfamily: 'MontserratSemi',
                        color: Color(0xFFf3f3f3),
                      ),
                    ],
                  ),
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 24),
                      child: MyTextbutton(
                        text: "Register",
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Registerphonepage()));
                        },
                        backgroundColor: Color(0xFFf3f3f3),
                        textColor: Color(0xFF2d2d2d),
                        borderRadius: 24,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 24),
                      child: MyTextbutton(
                        text: "Log In",
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Loginpage()));
                        },
                        backgroundColor: Color(0xFF5865f2),
                        textColor: Color(0xFFf3f3f3),
                        borderRadius: 24,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
