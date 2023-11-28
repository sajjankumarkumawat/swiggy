import 'package:flutter/material.dart';

class HOME extends StatefulWidget {
  const HOME({super.key});

  @override
  State<HOME> createState() => _HOMEState();
}

class _HOMEState extends State<HOME> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: size.height,
        width: size.width,
        decoration: BoxDecoration(
          color: Colors.black,
            image: DecorationImage(image: NetworkImage("https://i.pinimg.com/564x/55/b5/02/55b502520aeb31cff64c27f28e987c88.jpg"),opacity: 0.5,fit: BoxFit.cover)
        ),
        child: Column(
          children: [
           // Image(image: NetworkImage("")),
            Padding(
              padding: const EdgeInsets.only(top: 500,right: 140),
              child: Text("Swiggy",style:TextStyle(color: Colors.white,fontSize: 60,fontWeight: FontWeight.w700),),
            )
          ],
        ),

      ),
    );
  }
}
