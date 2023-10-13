import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class VolunteerRegistration extends StatefulWidget {
  const VolunteerRegistration({super.key});

  @override
  State<VolunteerRegistration> createState() => _VolunteerRegistrationState();
}

class _VolunteerRegistrationState extends State<VolunteerRegistration> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      backgroundColor: Color.fromRGBO(86, 189, 84, 1),
      body: Column(
        children: [
          Text(
            "Complete Your Profile",
            style: TextStyle(
              fontFamily: 'poppins',
              fontSize: 20,
              fontWeight: FontWeight.w400,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(children: [
            TextField(
              decoration: InputDecoration(
                hintText: 'First Name',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                
              ),
            )
          ])
        ],
      ),
    );
  }
}
