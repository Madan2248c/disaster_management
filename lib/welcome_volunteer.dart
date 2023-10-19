import 'package:disaster_management/VolunteerRegistration.dart';
import 'package:disaster_management/volunteerlogin1.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:text_divider/text_divider.dart';
import 'package:sign_button/sign_button.dart';
class welcome_volunteer extends StatefulWidget {
  const welcome_volunteer({super.key});

  @override
  State<welcome_volunteer> createState() => _welcome_volunteerState();
}

class _welcome_volunteerState extends State<welcome_volunteer> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            InkWell(
            onTap: () {
      Navigator.pop(context);
      },
        child: const Padding(
          padding: EdgeInsets.only(left: 20),
          child: SafeArea(
            child: Icon(
              CupertinoIcons.arrow_left,
              color: Colors.black,
            ),
          ),
        ),
      ),
            const SizedBox(
              height: 100,
            ),
            const Center(
              child: Text(
                "Dear,",
                style: TextStyle(
                  color: Color(0XFF56BD54),
                  fontFamily: 'poppins',
                  fontSize: 50,
                  shadows: [
                    Shadow(
                      offset: Offset(0, 4),
                      blurRadius: 4,
                      color: Color.fromRGBO(0, 0, 0, 0.25),
                    ),
                  ]
                ),
              ),
            ),
            const Center(
              child: Text(
                "Volunteer",
                style: TextStyle(
                  color: Color(0XFF56BD54),
                  fontFamily: 'poppins',
                  fontSize: 50,
                  shadows: [
                    Shadow(
                      offset: Offset(0, 4),
                      blurRadius: 4,
                      color: Color.fromRGBO(0, 0, 0, 0.25),
                    )
                  ]
                ),
              ),
            ),
            const SizedBox(
              height: 70,
            ),
            const Center(
              child: Text(
                "To continue ..",
                style: TextStyle(
                  color: Color(0XFF56BD54),
                  fontFamily: 'RoackNRoll',
                  fontSize: 25,
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Center(
              child: TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Volunteerlogin1()));
                  },
                  child: Container(
                    padding: const EdgeInsets.fromLTRB(65, 4, 65, 4),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.white,
                      border: Border.all(
                        color: Colors.black
                      )
                    ),
                    child: const Text(
                      "LOGIN",
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Inter',
                          fontSize: 28,
                          fontWeight: FontWeight.w500),
                    ),
                  )),
            ),
            Center(
              child: TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const VolunteerRegistration()));
                  },
                  child: Container(
                    padding: const EdgeInsets.fromLTRB(50, 4, 50, 4),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(
                        color: Colors.black
                      )
                    ),
                    child: const Text(
                      "SIGN UP",
                      style: TextStyle(
                        color: Colors.black,
                          fontSize: 28,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w500),
                    ),
                  )),
            ),
            const SizedBox(
              height: 20,
            ),
            TextDivider.horizontal(
                text: const Text('or continue with'),
                thickness: 1.0,
                color: Colors.black),
            const SizedBox(
              height: 40,
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SignInButton(
                    btnColor: Color(0XFF56BD54),
                    btnText: "Google Account",
                    width: 170,
                    btnTextColor: Colors.white,
                    buttonType: ButtonType.google,
                    onPressed: () {},
                  ),
                  SignInButton(
                    btnColor: Color(0XFF56BD54),
                      width: 170,
                      btnTextColor: Colors.white,
                      buttonType: ButtonType.apple,
                      onPressed: () {}
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
