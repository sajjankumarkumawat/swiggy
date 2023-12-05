import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:swiggy/scound_screen.dart';

import 'Help_us.dart';

class OTP extends StatefulWidget {
  const OTP({super.key});

  @override
  State<OTP> createState() => _OTPState();
}

class _OTPState extends State<OTP> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 30, left: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Icon(
              Icons.arrow_back,
              color: Colors.black,
              size: 30,
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Verify with OTP sent to ",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 40,
                  fontWeight: FontWeight.w600),
            ),
            const SizedBox(
              height: 9,
            ),
            Container(
              height: 100,
              width: size.width,
              child: Padding(
                padding: const EdgeInsets.only(right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,

                  children: [
                    SizedBox(
                      height:70,
                      width: 64,
                      child: TextField(
                        textAlign:  TextAlign.center, style: TextStyle(),
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(1),
                          FilteringTextInputFormatter.digitsOnly,
                        ],

                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(width: 3, color: Colors.deepOrange),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(width: 3, color: Colors.deepOrange)
                          )
                        ),

                      ),
                    ),
                    SizedBox(
                      height:70,
                      width: 64,
                      child: TextField(
                        textAlign:  TextAlign.center, style: TextStyle(),
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(1),
                          FilteringTextInputFormatter.digitsOnly,
                        ],

                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(width: 3, color: Colors.deepOrange),
                            ),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(width: 3, color: Colors.deepOrange)
                            )
                        ),

                      ),
                    ),
                    SizedBox(
                      height:70,
                      width: 64,
                      child: TextField(
                        textAlign:  TextAlign.center, style: TextStyle(),
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(1),
                          FilteringTextInputFormatter.digitsOnly,
                        ],

                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(width: 3, color: Colors.deepOrange),
                            ),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(width: 3, color: Colors.deepOrange)
                            )
                        ),

                      ),
                    ),
                    SizedBox(
                      height:70,
                      width: 64,
                      child: TextField(
                        textAlign:  TextAlign.center, style: TextStyle(),
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(1),
                          FilteringTextInputFormatter.digitsOnly,
                        ],

                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(width: 3, color: Colors.deepOrange),
                            ),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(width: 3, color: Colors.deepOrange)
                            )
                        ),

                      ),
                    ),

                  ],
                ),
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
                        MaterialPageRoute(builder: (context) => HELP()));
                  },
                  style: ButtonStyle(
                      shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                      backgroundColor:
                          MaterialStateProperty.all(Colors.deepOrange),
                      fixedSize:
                          MaterialStateProperty.all(const Size(400, 50))),
                  child: const Text(
                    "Continue",
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
