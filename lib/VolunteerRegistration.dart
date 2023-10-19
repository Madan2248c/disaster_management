import 'dart:core';
import 'dart:core';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


const List<String> gender = <String>['Male', 'Female', 'Other'];
String dropdownValue = "";
const List<String> proofType = <String>['Aadhaar Card', 'Driving License', 'PAN card','Voter ID'];


class VolunteerRegistration extends StatefulWidget {
  const VolunteerRegistration({Key? key}) : super(key: key);

  @override
  State<VolunteerRegistration> createState() => _VolunteerRegistrationState();
}


class _VolunteerRegistrationState extends State<VolunteerRegistration> {
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
                height: 10,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 30),
                child: Text(
                  "Complete Your profile",
                  style: TextStyle(
                    color: Color(0XFF56BD54),
                    fontFamily: 'poppins',
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width/2.5,
                    child: TextField(
                      decoration: InputDecoration(
                        fillColor: Colors.grey.shade200,
                        filled: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(color: Colors.white)
                        ),
                        hintText: "First Name",
                      ),
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width/2.5,
                    child: TextField(
                      decoration: InputDecoration(
                        fillColor: Colors.grey.shade200,
                        filled: true,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: const BorderSide(color: Colors.white)
                        ),
                        hintText: "Last Name",
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  DropdownMenu(
                    dropdownMenuEntries: gender.map<DropdownMenuEntry<String>>((String value) {
                    return DropdownMenuEntry<String>(value: value, label: value);
                  }).toList(),
                    onSelected: (String? value) {
                      setState(() {
                        dropdownValue = value!;
                      });
                    },
                    hintText: 'Gender',
                    inputDecorationTheme: InputDecorationTheme(
                      fillColor: Colors.grey.shade200,
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)
                      )
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width/4,
                    child: TextField(
                      decoration: InputDecoration(
                        fillColor: Colors.grey.shade200,
                        filled: true,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: const BorderSide(color: Colors.white)
                        ),
                        hintText: "Age",
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30,right: 30),
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.email_rounded),
                    fillColor: Colors.grey.shade200,
                    filled: true,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: Colors.white)
                    ),
                    hintText: "Email Id",
                  ),
                ),
              ),
               const SizedBox(
                 height: 20,
               ),
              Padding(
                padding: const EdgeInsets.only(left: 30,right: 30),
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.call),
                    fillColor: Colors.grey.shade200,
                    filled: true,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: Colors.white)
                    ),
                    hintText: "Contact Number",
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30,right: 30),
                child: TextField(
                  decoration: InputDecoration(
                    suffixIcon: IconButton(
                      onPressed: () {}, icon: const Icon(Icons.pin_drop_outlined),
                    ),
                    fillColor: Colors.grey.shade200,
                    filled: true,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: Colors.white)
                    ),
                    hintText: "Location",
                  ),
                ),
              ),
              // const Text(
              //   "Add Skills",
              //   style: TextStyle(
              //     fontFamily: 'poppins',
              //     fontSize: 20,
              //     fontWeight: FontWeight.w400,
              //   ),
              // ),
              // const SizedBox(
              //   height: 20,
              // ),
              // Padding(
              //   padding: const EdgeInsets.only(left: 30,right: 30),
              //   child: TextField(
              //     decoration: InputDecoration(
              //       fillColor: Colors.grey.shade200,
              //       filled: true,
              //       border: OutlineInputBorder(
              //           borderRadius: BorderRadius.circular(10),
              //           borderSide: const BorderSide(color: Colors.white)
              //       ),
              //       hintText: "Enter the skills you have",
              //     ),
              //   ),
              // ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30,right: 30),
                child: Container(
                  alignment: Alignment.centerLeft,
                  width: MediaQuery.of(context).size.width,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    border: Border.all(color: Colors.black),
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                  ),
                  child: const Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 20),
                        child: Icon(CupertinoIcons.camera),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text("Upload a Pic",
                      style: TextStyle(
                        fontFamily: 'Inter',
                        color: Colors.grey,
                        fontWeight: FontWeight.w400,
                      ),),
                    ],
                  ),
                  ),
                ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  DropdownMenu(
                    dropdownMenuEntries: proofType.map<DropdownMenuEntry<String>>((String value) {
                      return DropdownMenuEntry<String>(value: value, label: value);
                    }).toList(),
                    onSelected: (String? value) {
                      setState(() {
                        dropdownValue = value!;
                      });
                    },
                    hintText: 'Proof Type',
                    inputDecorationTheme: InputDecorationTheme(
                        fillColor: Colors.grey.shade200,
                        filled: true,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)
                        )
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width/2.5,
                    child: TextField(
                      decoration: InputDecoration(
                        fillColor: Colors.grey.shade200,
                        filled: true,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: const BorderSide(color: Colors.white)
                        ),
                        hintText: "Card Number",
                      ),
                    ),
                  ),
                ],
              ),

              const SizedBox(
                height: 50,
              ),
            Padding(
              padding: const EdgeInsets.only(left: 100,right: 100),
              child: Center(
                child: Container(
                  padding: const EdgeInsets.fromLTRB(20, 4, 20, 4),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: const Color(0XFF56BD54),
                  ),
                  child: const Row(
                    children: [
                      Text(
                        "Continue",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w300),
                      ),
                      Icon(CupertinoIcons.arrow_right,color: Colors.white,)
                    ],
                  ),
                ),
              ),
            ),
              const SizedBox(
                height: 20,
              )
            ],
          ),
        ),
      ),
    );
  }
}
