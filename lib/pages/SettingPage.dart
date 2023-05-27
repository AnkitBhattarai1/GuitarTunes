import 'dart:ffi';
import 'dart:ui';

import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  @override
  State<SettingsPage> createState() => _SettingsPageState();
  bool toggled = false;
}

class _SettingsPageState extends State<SettingsPage> {
  bool _toggledvalue = false;
  bool _toggledvalue2 = false;
  bool _fingerColor = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        elevation: 0,
        centerTitle: false,
        backgroundColor: Colors.transparent,
        title: const Text(
          "Settings",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  height: 57,
                  padding: const EdgeInsets.only(left: 18),
                  width: 160,
                  alignment: Alignment.centerLeft,
                  decoration: const BoxDecoration(
                      //border: Border.all(color: Colors.red)
                      ),
                  child: const Text(
                    "General",
                    style: TextStyle(color: Colors.white, fontSize: 30),
                  ),
                ),
                const SizedBox(
                  width: 200,
                )
              ],
            ),

            //Languages
            scrollTile(
              leading: const Text(
                "Languages",
                style: TextStyle(fontSize: 25, color: Colors.white),
              ),
              trailing: TextButton(
                onPressed: () {},
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    "English",
                    style: TextStyle(color: Colors.white54),
                  ),
                ),
              ),
            ),
            //Node name Convection
            scrollTile(
                leading: const Text(
                  "Note name Convection",
                  style: TextStyle(fontSize: 25, color: Colors.white),
                ),
                trailing: TextButton(
                  child: Text(
                    "English",
                    style: TextStyle(color: Colors.white54),
                  ),
                  onPressed: () {},
                )),

            scrollTile(
                leading: const Text(
                  "Calibrate",
                  style: TextStyle(fontSize: 25, color: Colors.white),
                ),
                trailing: TextButton(
                  onPressed: () {},
                  child: Text(
                    "400Hz",
                    style: TextStyle(color: Colors.white54),
                  ),
                )),
            //Left Handed mode
            scrollTile(
                leading: Text("Left Handed Mode",
                    style: TextStyle(
                      fontSize: 25,
                    )),
                trailing: Switch(
                  onChanged: (value) {
                    setState(() {
                      _toggledvalue2 = value;
                    });
                  },
                  value: _toggledvalue2,
                )),
            //Proaccuracy
            scrollTile(
                leading: Text("Pro Accuracy",
                    style: TextStyle(
                      fontSize: 25,
                    )),
                trailing: Switch(
                  onChanged: (value) {
                    setState(() {
                      _toggledvalue = value;
                    });
                  },
                  value: _toggledvalue,
                )),

            const SizedBox(
              height: 19,
            ),

            //Chords
            Row(
              children: [
                Container(
                  height: 57,
                  padding: EdgeInsets.only(left: 18),
                  width: 160,
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Chords",
                    style: TextStyle(color: Colors.white, fontSize: 30),
                  ),
                  decoration: BoxDecoration(
                      /* border: 
                      Border.all(color: Colors.white) */
                      ),
                ),
                SizedBox(
                  width: 200,
                )
              ],
            ),

            //FingerColor
            scrollTile(
                leading: const Text("Finger Color",
                    style: TextStyle(
                      fontSize: 25,
                    )),
                trailing: Switch(
                  onChanged: (value) {
                    setState(() {
                      _fingerColor = value;
                    });
                  },
                  value: _fingerColor,
                )),

            const SizedBox(
              height: 20,
            ),

            //Subscription
            SizedBox(
              height: 20,
            ),

            Row(
              children: [
                Container(
                  height: 57,
                  padding: EdgeInsets.only(left: 18),
                  width: 200,
                  alignment: Alignment.centerLeft,
                  decoration: const BoxDecoration(
                      //border: Border.all(color: Colors.white)
                      ),
                  child: const Text(
                    "Privacy",
                    style: TextStyle(
                        //ß          color: Colors.white,
                        fontSize: 20),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),

            scrollTile(
              leading: const Text(
                "Privacy Notice",
                style: TextStyle(fontSize: 25, color: Colors.white),
              ),
              trailing: TextButton(
                onPressed: () {},
                child: TextButton(
                    onPressed: () {},
                    child: const Icon(
                      Icons.link_outlined,
                      color: Colors.white54,
                    )),
              ),
            ),

            scrollTile(
              leading: const Text(
                "Download Your Data",
                style: TextStyle(fontSize: 25, color: Colors.white),
              ),
              trailing: TextButton(
                onPressed: () {},
                child: TextButton(
                    onPressed: () {},
                    child: const Icon(
                      Icons.link_outlined,
                      color: Colors.white54,
                    )),
              ),
            ),

            scrollTile(
              leading: const Text(
                "Delete Your data",
                style: TextStyle(fontSize: 25, color: Colors.white),
              ),
              trailing: TextButton(
                onPressed: () {},
                child: TextButton(
                    onPressed: () {},
                    child: const Icon(
                      Icons.link_outlined,
                      color: Colors.white54,
                    )),
              ),
            ),
            scrollTile(
              leading: const Text(
                "Terms of Service",
                style: TextStyle(fontSize: 25, color: Colors.white),
              ),
              trailing: TextButton(
                onPressed: () {},
                child: TextButton(
                    onPressed: () {},
                    child: const Icon(
                      Icons.link_outlined,
                      color: Colors.white54,
                    )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class scrollTile extends StatelessWidget {
  Widget leading;
  Widget trailing;

  scrollTile({
    super.key,
    required this.leading,
    required this.trailing,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(top: 5, bottom: 5, left: 5, right: 5),
        padding:
            const EdgeInsetsDirectional.symmetric(vertical: 2, horizontal: 8),
        height: 60,
        alignment: Alignment.center,
        width: 600,
        decoration: BoxDecoration(
            border: Border.all(color: Colors.white),
            borderRadius: BorderRadius.circular(25)),
        child: ListTile(
          leading: leading,
          // leading: Text(
          //   text,
          //   textAlign: TextAlign.left,
          //   style: const TextStyle(
          //     color: Colors.white,
          //     fontSize: 25,
          //   ),
          // ),
          trailing: trailing,
        ));
  }
}
