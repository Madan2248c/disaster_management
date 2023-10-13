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
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 90,
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
                height: 20,
              ),
              Text(
                "Welcome,",
                style: TextStyle(fontSize: 40, fontFamily: 'Abyssinica_SIL'),
              ),
              Text("Madhav A Das",
                  style: TextStyle(fontSize: 40, fontFamily: 'Abyssinica_SIL')),
              const SizedBox(
                height: 50,
              ),
              const Text(
                "Enter OTP  to continue",
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
              const SizedBox(
                height: 60,
              ),
              TextButton(
                  onPressed: () {},
                  child: Container(
                    padding: const EdgeInsets.fromLTRB(50, 8, 50, 12),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.black,
                    ),
                    child: const Text(
                      "LOGIN",
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
