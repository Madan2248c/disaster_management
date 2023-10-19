import 'package:disaster_management/volunteerlogin2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Volunteerlogin1 extends StatefulWidget {
  const Volunteerlogin1({super.key});

  @override
  State<Volunteerlogin1> createState() => _Volunteerlogin1State();
}

class _Volunteerlogin1State extends State<Volunteerlogin1> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SingleChildScrollView(
          child: Column(
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
                height: 200,
              ),
              const Center(
                  child: Text(
                "LOGIN",
                style: TextStyle(
                    color: Color(0XFF56BD54),
                    shadows: [
                      Shadow(
                        offset: Offset(0, 4),
                        blurRadius: 4,
                        color: Color.fromRGBO(0, 0, 0, 0.25),
                      ),
                    ],
                    fontFamily: 'poppins',
                    fontSize: 50,

                    fontWeight: FontWeight.w500),
              )),
              const SizedBox(
                height: 50,
              ),
              Center(
                child: const Text(
                  "Enter your E-mail / mobile number to continue",
                  style: TextStyle(
                      fontFamily: 'Inter',
                      fontSize: 15,
                      fontWeight: FontWeight.w400),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Center(
                child: Container(
                  width: 324,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        hintText: 'Email/Contact No',
                        focusedBorder: const OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.transparent))),
                  ),
                ),
              ),
              const SizedBox(
                height: 60,
              ),
              Center(
                child: TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Volunteerlogin2()));
                    },
                    child: Container(
                      padding: const EdgeInsets.fromLTRB(50, 8, 50, 12),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Color(0XFF56BD54),
                      ),
                      child: const Text(
                        "Generate OTP",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontFamily: 'Plus Jakarta Sans',
                            fontWeight: FontWeight.w600),
                      ),
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
