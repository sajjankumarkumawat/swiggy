import 'package:flutter/material.dart';

import 'home.dart';
class SWIGGY extends StatefulWidget {
  const SWIGGY({super.key});

  @override
  State<SWIGGY> createState() => _SWIGGYState();
}


class _SWIGGYState extends State<SWIGGY> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 4),() {
      Navigator.push(context, MaterialPageRoute(builder: (context) => const HOME(),));
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body:Container(
        height: size.height,
        width: size.width,
        decoration: BoxDecoration(
            color: Colors.white,
          image: DecorationImage(image: NetworkImage("https://logolook.net/wp-content/uploads/2023/04/Swiggy-Logo.png"))
        ),


      ) ,
    );
  }
}
