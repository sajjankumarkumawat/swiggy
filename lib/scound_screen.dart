import 'package:flutter/material.dart';

import 'OTP_sent.dart';

class GET_OTP extends StatefulWidget {
  const GET_OTP({super.key});

  @override
  State<GET_OTP> createState() => _GET_OTPState();
}

class _GET_OTPState extends State<GET_OTP> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        margin: EdgeInsets.only(top: 30, left: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(
              Icons.arrow_back,
              color: Colors.black,
              size: 30,
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              "Enter your mobile number to get OTP",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 40,
                  fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: TextField(
                keyboardType: TextInputType.number,
                maxLength: 10,
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
                    prefixText: "+91 | ",
                    prefixStyle: TextStyle(fontSize: 20),
                    labelText: "Mobile Number",
                    labelStyle:
                        TextStyle(color: Colors.deepOrange, fontSize: 20)),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => OTP()));
                  },
                  style: ButtonStyle(
                    shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
                      backgroundColor:
                          MaterialStateProperty.all(Colors.deepOrange),
                      fixedSize: MaterialStateProperty.all(const Size(400, 50))),
                  child: const Text(
                    "Get OTP",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w700),
                  )),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              "By clicking, I accept terms of service and privacy policy",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.w400),
            ),
          ],
        ),
      ),
    );
  }
}
