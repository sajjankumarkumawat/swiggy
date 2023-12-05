import 'package:flutter/material.dart';
import 'package:swiggy/scound_screen.dart';

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
        decoration: const BoxDecoration(
          color: Colors.black,
            image: DecorationImage(image: NetworkImage("https://i.pinimg.com/564x/55/b5/02/55b502520aeb31cff64c27f28e987c88.jpg"),opacity: 0.5,fit: BoxFit.cover)
        ),
        child: Container(
          margin: const EdgeInsets.only(left: 35,top: 550),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
             // Image(image: NetworkImage("")),
              const Text("Swiggy",style:TextStyle(color: Colors.white,fontSize: 60,fontWeight: FontWeight.w400),),
              const SizedBox(height: 10,),
              const Row(
                children: [
                  Text("Food",style:TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.w400),),
                  SizedBox(width: 10,),
                  Icon(Icons.circle,size: 15,color: Colors.deepOrange,),
                  SizedBox(width: 10,),
                  Text("Instamart",style:TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.w400),),
                  SizedBox(width: 10,),
                  Icon(Icons.circle,size: 15,color: Colors.deepOrange,),
                  SizedBox(width: 10,),
                  Text("Dineout",style:TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.w400),),
              ],),
              const Padding(
                padding: EdgeInsets.only(right: 40),
                child: Divider(color: Colors.white,thickness: 2,),
              ),
              const SizedBox(height: 10,),
              const Text("Up to 40% off on dining bills",style:TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.w400),),
              const SizedBox(height: 15,),
              Padding(
                padding: const EdgeInsets.only(right: 40),
                child: ElevatedButton(onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> GET_OTP()));
                },style:  ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.deepOrange),fixedSize: MaterialStateProperty.all(Size(400, 45))), child:Text("Get started",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight:FontWeight.w400),) ),
              ),
              const SizedBox(height: 40,),

            ],
          ),
        ),

      ),
    );
  }
}
