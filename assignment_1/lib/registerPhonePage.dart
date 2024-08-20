import 'package:assignment_1/registerEmailPage.dart';
import 'package:assignment_1/widgets/my_helpbutton.dart';
import 'package:assignment_1/widgets/my_text.dart';
import 'package:assignment_1/widgets/my_textbutton.dart';
import 'package:assignment_1/widgets/my_textfield.dart';
import 'package:flutter/material.dart';

class Registerphonepage extends StatefulWidget {
  const Registerphonepage({super.key});

  @override
  State<Registerphonepage> createState() => _RegisterphonepageState();
}

class _RegisterphonepageState extends State<Registerphonepage> {
  final TextEditingController phone = TextEditingController();

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
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                SizedBox(height: 16),
                MyText(
                  text: "Enter phone or email!",
                  fontsize: 24,
                  fontfamily: 'MontserratBold',
                  color: Color(0xFFf3f3f3),
                ),
                SizedBox(height: 24),
                Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: Row(
                    children: [
                      Expanded(
                        child: MyTextbutton(
                          backgroundColor: Color(0xFF32323c),
                          onPressed: () {},
                          text: "Phone",
                          textColor: Color(0xFFf3f3f3),
                          borderRadius: 4,
                        ),
                      ),
                      Expanded(
                        child: MyTextbutton(
                          backgroundColor: Color(0xFF17161c),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Registeremailpage()));
                          },
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
                        "Phone Number",
                        style: TextStyle(
                          color: Color(0xFF777a83),
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 4, bottom: 8),
                      child: Row(
                        children: [
                          Container(
                            width: 80,
                            child: MyTextbutton(
                              text: "ID +62",
                              onPressed: () {},
                              backgroundColor: Color(0xFF32323c),
                              textColor: Color(0xFFf3f3f3),
                              height: 67,
                              borderRadius: 4,
                            ),
                          ),
                          Flexible(
                            child: MyTextfield(
                              hintText: "Phone Number",
                              isObsecure: false,
                              icons: null,
                              controller: phone,
                              onIconPressed: () {},
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                MyHelpbutton(
                  text: "View our Privacy Policy",
                  onPressed: () {},
                ),
                MyTextbutton(
                  text: "Next",
                  onPressed: () {},
                  backgroundColor: Color(0xFF5865f2),
                  textColor: Color(0xFFf3f3f3),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
