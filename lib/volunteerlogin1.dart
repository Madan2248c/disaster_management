import 'package:disaster_management/volunteerlogin2.dart';
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
        backgroundColor: const Color.fromRGBO(86, 189, 84, 1),
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
        body: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 200,
              ),
              const Center(
                  child: Text(
                "LOGIN",
                style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'Abyssinica_SIL',
                    fontSize: 50,
                    fontWeight: FontWeight.w500),
              )),
              const SizedBox(
                height: 50,
              ),
              const Text(
                "Enter your E-mail / mobile number to continue",
                style: TextStyle(
                    fontFamily: 'Inter',
                    fontSize: 15,
                    fontWeight: FontWeight.w400),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
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
              const SizedBox(
                height: 60,
              ),
              TextButton(
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
                      color: Colors.black,
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
            ],
          ),
        ),
      ),
    );
  }
}
