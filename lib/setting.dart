import 'package:app1_2/homePage.dart';
import 'package:app1_2/lightTheme.dart';
import 'package:flutter/material.dart';

class Setting extends StatefulWidget {
  const Setting({Key? key}) : super(key: key);

  @override
  State<Setting> createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      backgroundColor: Colors.white10,
      appBar: AppBar(
        title: Text("Setting",style: TextStyle(fontSize: 25)),
        centerTitle: true,
        backgroundColor: Colors.white10,
      ),
      body: Column(
        children: [
          Container(
            height: 100,
            width: 500,
            child: Padding(
              padding: const EdgeInsets.only(left: 20,top: 25),
              child: Text("Theme",style: TextStyle(fontSize: 25,color: Colors.white)),
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
                  Text("Light Theme",style: TextStyle(color: Colors.white,fontSize: 20),),
                  SizedBox(width: 213,),
                  Icon(Icons.light_mode_outlined,color: Colors.white,size: 20,)
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
                    Text("Dark Theme",style: TextStyle(color: Colors.white,fontSize: 20),),
                    SizedBox(width: 215,),
                    Icon(Icons.dark_mode_outlined,color: Colors.white,size: 20,)
                  ],
                ),
              ),
            ),
        ],
      ),
    ));
  }
}
