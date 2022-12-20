import 'package:app1_2/setting.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}


class _HomePageState extends State<HomePage> {
  int i=1;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white10,
        body: Center(
          child: Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 25,right: 25,left: 140),
                    child: InkWell(
                        onTap: () {
                          setState(() {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => Setting(),));
                          });
                        },
                        child: Icon(Icons.settings,color: Colors.white,size: 25,)
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 25),
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          i=1;
                        });
                      },
                      child: Icon(Icons.refresh,color: Colors.white,size: 25,)
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 250,bottom: 250),
                child: Text("$i",style: TextStyle(color: Colors.white,fontSize: 75),),
              ),
              Center(
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(18),
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            i++;
                          });
                        },
                        child: Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(shape: BoxShape.circle,border: Border.all(color: Colors.white),color: Colors.white10,),
                          child: Icon(Icons.add,color: Colors.white),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 17),
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            i=i*2;
                          });
                        },
                        child: Container(
                            width: 50,
                            height: 50,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(shape: BoxShape.circle,border: Border.all(color: Colors.white),color: Colors.white10,),
                            child: Text("x2",style: TextStyle(color: Colors.white,fontSize: 25),)
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 17),
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            i=i*5;
                          });
                        },
                        child: Container(
                            width: 75,
                            height: 75,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(shape: BoxShape.circle,border: Border.all(color: Colors.white),color: Colors.white10),
                            child: Text("x5",style: TextStyle(color: Colors.white,fontSize: 25),)
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 17),
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            i=i*4;
                          });
                        },
                        child: Container(
                            width: 50,
                            height: 50,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(shape: BoxShape.circle,border: Border.all(color: Colors.white),color: Colors.white10),
                            child: Text("x4",style: TextStyle(color: Colors.white,fontSize: 25),)
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 18),
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            i--;
                          });
                        },
                        child: Container(
                            width: 40,
                            height: 40,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(shape: BoxShape.circle,border: Border.all(color: Colors.white),color: Colors.white10,),
                            child: Text("-",style: TextStyle(color: Colors.white,fontSize: 40),)
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
