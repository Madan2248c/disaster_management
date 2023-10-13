import 'package:disaster_management/welcome_volunteer.dart';
import 'package:flutter/material.dart';

import 'Request_volunteer.dart';

const List<String> list = <String>['One', 'Two', 'Three', 'Four'];

void main() {
  runApp(const MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return HomePage();
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState(); 
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromRGBO(86, 189, 84, 1),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 237,
            ),
            const Image(
                height: 186,
                width: 186,
                image: AssetImage("lib/assets/earth.png")),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("M",
                    style:
                        TextStyle(fontSize: 85, fontFamily: 'Abyssinica_SIL')),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "DISASTER",
                      style: TextStyle(
                          fontSize: 25,
                          fontFamily: 'SortsMillGoudy',
                          height: 1.5,
                          fontWeight:
                              FontWeight.w500), // Adjust the height property
                    ),
                    Text(
                      "anagement",
                      style: TextStyle(
                          fontSize: 32,
                          fontFamily: 'Abyssinica_SIL',
                          height: 1.0), // Adjust the height property
                    )
                  ],
                )
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            const Text("Choose an option",
                style: TextStyle(fontSize: 30, fontFamily: 'Inter')),
            TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const request_volunteer()));
                },
                child: Container(
                  padding: const EdgeInsets.fromLTRB(75, 4, 75, 4),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.white,
                  ),
                  child: const Text(
                    "I NEED HELP",
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Inter',
                        fontSize: 28,
                        fontWeight: FontWeight.w300),
                  ),
                )),
            TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    PageRouteBuilder(
                      pageBuilder: (context, animation, secondaryAnimation) =>
                          const welcome_volunteer(),
                      transitionsBuilder:
                          (context, animation, secondaryAnimation, child) {
                        const Offset begin = Offset(1.0, 0.0);
                        const Offset end = Offset.zero;
                        const Curve curve = Curves.easeIn;

                        var tween = Tween(begin: begin, end: end)
                            .chain(CurveTween(curve: curve));

                        var offsetAnimation = animation.drive(tween);

                        return SlideTransition(
                          position: offsetAnimation,
                          child: child,
                        );
                      },
                    ),
                  );
                },
                child: Container(
                  padding: const EdgeInsets.fromLTRB(20, 4, 20, 4),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.black,
                  ),
                  child: const Text(
                    "I WANT TO VOLUNTEER",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w300),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
