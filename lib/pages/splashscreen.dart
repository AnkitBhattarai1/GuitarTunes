// import 'dart:async';

// import 'package:flutter/material.dart';
// import 'package:guitar_tunes/main.dart';
// import 'package:guitar_tunes/pages/GuitarTuningPage.dart';

// class SplashScreen extends StatefulWidget {
//   const SplashScreen({super.key});

//   @override
//   State<SplashScreen> createState() => _SplashScreenState();
// }

// class _SplashScreenState extends State<SplashScreen> {
//   @override
//   Widget build(BuildContext context) {
//     int value =0;
//     Timer(Duration(seconds: 5), () {
//       Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
//         return HomePage();
//       },));
//     });
//     return MaterialApp(

//       debugShowCheckedModeBanner: false,
//       title: "Guitar Tunes",
//       home: Scaffold(

//         backgroundColor: Colors.black,
//         body: InkWell(
//           onTap: (){
//             ++value;
//             print("Pressed $value times");
//           },
//           child: Center(
//             child: Text(
//                 "Guitar Tunes",
//                 style: TextStyle(
//                   color: Colors.white,
//                   fontSize: 30,
//                   fontWeight:FontWeight.bold,
//                 ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:guitar_tunes/main.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(context, MaterialPageRoute(
        builder: (context) {
          return HomePage();
        },
      ));
    });
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/bg_final.png"),
                fit: BoxFit.cover)),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Container(
                    height: 400,
                    width: 400,
                    decoration: const BoxDecoration(
                        // border: Border.all(color: Colors.black),
                        image: DecorationImage(
                            image: AssetImage("assets/images/splash_final.png"),
                            fit: BoxFit.cover)),
                  ),
                  /* Container(
                    child: Text(
                      "Guitar Tunes",
                      style: TextStyle(
                          fontSize: 55,
                          color: Colors.amber.shade700,
                          fontFamily: "Kanit",
                          fontWeight: FontWeight.w800),
                    ),
                  ), */
                  const SizedBox(
                    height: 30,
                  ),
                  CircularProgressIndicator(
                    color: Colors.white,
                    backgroundColor: Colors.indigo.shade700,
                    strokeWidth: 3,
                  )
                  /* CircularProgressIndicator.adaptive(
                    backgroundColor: Colors.white,
                    strokeWidth: 5,
                  ) */
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
