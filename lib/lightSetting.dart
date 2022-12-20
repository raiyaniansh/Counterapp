import 'package:flutter/material.dart';
import 'homePage.dart';
import 'lightTheme.dart';

class Lightsetting extends StatefulWidget {
  const Lightsetting({Key? key}) : super(key: key);

  @override
  State<Lightsetting> createState() => _LightsettingState();
}

class _LightsettingState extends State<Lightsetting> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: InkWell(
        onTap: () {
          setState(() {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Light(),));
          });
        },
          child: Icon(Icons.arrow_back,color: Colors.black,),
        ),
        title: Text("Setting",style: TextStyle(fontSize: 25,color: Colors.black)),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: Column(
        children: [
          Container(
            height: 100,
            width: 500,
            child: Padding(
              padding: const EdgeInsets.only(left: 20,top: 25),
              child: Text("Theme",style: TextStyle(fontSize: 25,color: Colors.black)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20,top: 10),
            child: InkWell(
              onTap: () {
                setState(() {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Light(),));
                });
              },
              child: Row(
                children: [
                  Text("Light Theme",style: TextStyle(color: Colors.black,fontSize: 20),),
                  SizedBox(width: 213,),
                  Icon(Icons.light_mode_outlined,color: Colors.black,size: 20,)
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20,top: 10),
            child: InkWell(
              onTap: () {
                setState(() {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage(),));
                });
              },
              child: Row(
                children: [
                  Text("Dark Theme",style: TextStyle(color: Colors.black,fontSize: 20),),
                  SizedBox(width: 215,),
                  Icon(Icons.dark_mode_outlined,color: Colors.black,size: 20,)
                ],
              ),
            ),
          ),
        ],
      ),
    ));;
  }
}
