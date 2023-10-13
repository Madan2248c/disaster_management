import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class request_volunteer extends StatefulWidget {
  const request_volunteer({super.key});

  @override
  State<request_volunteer> createState() => _request_volunteerState();
}

class _request_volunteerState extends State<request_volunteer> {
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
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image(
                width: MediaQuery.of(context).size.width,
                image: const AssetImage("lib/assets/image 9.png")),
            Row(
              children: [
                Container(
                  alignment: Alignment.bottomLeft,
                  padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                  child: const Text(
                    "REQUEST TITLE",
                    style: TextStyle(
                        fontFamily: 'Inter',
                        fontSize: 20,
                        fontWeight: FontWeight.w900),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                const Icon(Icons.call),
                const SizedBox(
                  width: 10,
                ),
                const Icon(Icons.message)
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Please provide a brief description of the current flood situation in your area. Include details such as water levels, affected neighborhoods, road closures, and any immediate safety concerns. Your report will help us coordinate assistance and resources effectively during this flood event.",
                style: TextStyle(
                    fontFamily: 'Inter',
                    fontSize: 20,
                    fontWeight: FontWeight.w100),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Container(
              child: const Text(
                "Category",
                style: TextStyle(
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w800,
                    fontSize: 20),
              ),
              padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              child: const Image(
                image: AssetImage("lib/assets/image 6.png"),
              ),
              padding: const EdgeInsets.all(10),
            )
          ],
        ),
      ),
    );
  }
}
