import 'package:flutter/material.dart';

import 'Location.dart';
import 'OTP_sent.dart';


class HELP extends StatefulWidget {
  const HELP({super.key});

  @override
  State<HELP> createState() => _HELPState();
}

class _HELPState extends State<HELP> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 30, left: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            const SizedBox(
              height: 40,
            ),
            const Text(
              "Help us get to know you",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 35,
                  fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: TextField(
                keyboardType: TextInputType.number,
                               decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                      BorderSide(width: 3, color: Colors.deepOrange),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderSide:
                        BorderSide(width: 3, color: Colors.deepOrange),
                        borderRadius: BorderRadius.circular(15)),

                    labelText: "Name",
                    labelStyle:
                    TextStyle(color: Colors.deepOrange, fontSize: 20)),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: TextField(
                keyboardType: TextInputType.number,

                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                      BorderSide(width: 3, color: Colors.deepOrange),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderSide:
                        BorderSide(width: 3, color: Colors.deepOrange),
                        borderRadius: BorderRadius.circular(15)),

                    labelText: "Email",
                    labelStyle:
                    TextStyle(color: Colors.deepOrange, fontSize: 20)),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Location_page()));
                  },
                  style: ButtonStyle(
                      shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
                      backgroundColor:
                      MaterialStateProperty.all(Colors.deepOrange),
                      fixedSize: MaterialStateProperty.all(const Size(400, 50))),
                  child: const Text(
                    "Confirm details",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w700),
                  )),
            ),
            const SizedBox(
              height: 5,
            ),

          ],
        ),
      ),
    );
  }
}
