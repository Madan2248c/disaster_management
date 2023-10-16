import 'package:disaster_management/VolunteerRegistration.dart';
import 'package:disaster_management/volunteerlogin1.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:text_divider/text_divider.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';

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
        backgroundColor:
         const Color.fromRGBO(86, 189, 84, 1),
        appBar: AppBar(
          leading: SafeArea(
            child: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: const Icon(
                Icons.arrow_back_outlined,
                size: 30,
              ),
            ),
          ),
          title: const Text(
            "ADMS",
            style: TextStyle(color: Colors.black, fontFamily: 'Abyssinica_SIL'),
          ),
        ),
        body: Column(
          children: [
            const SizedBox(
              height: 100,
            ),
            const Center(
              child: Text(
                "Hi,",
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'Abyssinica_SIL',
                  fontSize: 50,
                ),
              ),
            ),
            const Center(
              child: Text(
                "Volunteer",
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'Abyssinica_SIL',
                  fontSize: 50,
                ),
              ),
            ),
            const SizedBox(
              height: 70,
            ),
            const Center(
              child: Text(
                "To continue login/sign up",
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'Inter',
                  fontSize: 25,
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            TextButton(
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
            TextButton(
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
                    color: Colors.black,
                  ),
                  child: const Text(
                    "SIGN UP",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 28,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w500),
                  ),
                )),
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
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SignInButton(
                  Buttons.Google,
                  onPressed: () {},
                ),
                /*  InkWell(
                  onTap: () {},
                  child: Container(
                    width: 35,
                    height: 35,
                    margin: EdgeInsets.all(5.0),
                    color: Colors.white, // Set the background color to white
                    child: const Image(
                      image: NetworkImage("https://upload.wikimedia.org/wikipedia/commons/thumb/5/53/Google_%22G%22_Logo.svg/2048px-Google_%22G%22_Logo.svg.png"),
                    ),
                  ),
                ),
                SignInButton(
                  Buttons.Facebook,
                  mini: true,
                  onPressed: () {},
                ),*/
                SignInButton(
                  Buttons.Apple,
                  onPressed: () {},
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
