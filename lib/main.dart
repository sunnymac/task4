import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
     
      home: Scaffold(
        backgroundColor: Colors.grey.shade300,
        appBar: AppBar(title: Text("Instagram Lite"),
    ),
      body: Column(
      
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset("assets/images/modelpic.jpg"),
          SizedBox(height: 20, ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
Container(
  child: Row(
    children: [
       Image.asset("assets/images/heart.png",  height: 30,),
              SizedBox(width: 5,),
              Text("Likes"),
    ],
  ),
),
Container(
  child: Row(
    children: [
       Image.asset("assets/images/chat.png",  height: 30,),
              SizedBox(width: 5,),
              Text("Comments"),
    ],
  ),
),
    
    Container(
  child: Row(
    children: [
       Image.asset("assets/images/send.png",  height: 30,),
              SizedBox(width: 5,),
              Text("Share"),
    ],
  ),
),
    
             
             
            ],
          )
        ],
      ),
      ),
    );
  }
}
