import 'dart:async';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
   // git tutorial
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: const MyHomePage(),
    );
  }
}
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int counter =15;
  late Timer timer;  
  void startTimer(){
    counter=15;
    timer=Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        if(counter>0){
          counter--;
        }
        else{
          timer.cancel();
        }
      });
     });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Column(mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [(counter>0)?Text(""):Text("Timer Done !",style: TextStyle(color: Colors.green,
      fontWeight: FontWeight.bold,
      fontSize: 40),),
      Text('$counter',style :TextStyle(fontSize:40,fontWeight: FontWeight.bold,color:Colors.yellow)), 
      ElevatedButton(onPressed: ()=>startTimer(),
      style: ElevatedButton.styleFrom(backgroundColor: Colors.blueGrey,shape: CircleBorder(),fixedSize: Size(110, 110)), child: Text("Start Timer"))
      ],
      ),
      ),

    );
  }
}