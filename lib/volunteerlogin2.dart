import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Volunteerlogin2 extends StatefulWidget {
  const Volunteerlogin2({super.key});

  @override
  State<Volunteerlogin2> createState() => _Volunteerlogin2State();
}

class _Volunteerlogin2State extends State<Volunteerlogin2> {
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
                height: 170,
              ),
              const SizedBox(
                height: 20,
              ),
              const Center(
                child: Text(
                  "Welcome,",
                  style: TextStyle(
                    color: Color(0XFF56BD54),
                    fontSize: 40,
                    fontFamily: 'poppins',
                  ),
                ),
              ),
              const Center(
                child: Text("Madhav A Das",
                    style: TextStyle(
                      color: Color(0XFF56BD54),
                        fontSize: 40,
                        fontFamily:
                        'poppins')),
              ),
              const SizedBox(
                height: 50,
              ),
              const Center(
                child: Text(
                  "Enter OTP  to continue",
                  style: TextStyle(
                      fontFamily: 'Inter',
                      fontSize: 15,
                      fontWeight: FontWeight.w400),
                ),
              ),
              const Center(
                child: SizedBox(
                  height: 20,
                ),
              ),
              Center(
                child: Container(
                  width: 324,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextField(
                    inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        hintText: 'OTP',
                        focusedBorder: const OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.transparent))),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 40),
                child: Align(
                  alignment: Alignment.centerRight,
                    child: TextButton(
                        onPressed: (){},
                        child: const Text("Resend OTP",
                        style:TextStyle(
                          fontFamily: 'Inter',
                        ),)
                    )
                ),
              ),
              const SizedBox(
                height: 60,
              ),
              Center(
                child: TextButton(
                    onPressed: () {},
                    child: Container(
                      padding: const EdgeInsets.fromLTRB(50, 8, 50, 12),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: const Color(0XFF56BD54),
                      ),
                      child: const Text(
                        "LOGIN",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w600
                        ),
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
