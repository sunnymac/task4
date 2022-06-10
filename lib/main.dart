import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int like = 0;
  int commnets=0;
  int share = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
     
      home: Scaffold(
        
        appBar: AppBar(title: Text("Instagram Lite"),
    ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
        
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
               width: double.infinity,
              //color: Colors.red,
              alignment: Alignment.centerLeft,
              child: Row(
                children: [
                  CircleAvatar(
                    
                    
                    child: Image.asset("assets/images/modelpic.jpg"),
                  ),
                  SizedBox(width: 10,),
                  Text("Abc ", style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold
                  ),)
                ],
              )),
              SizedBox(height: 10,),
            Container(
             
              child: Image.asset("assets/images/modelpic.jpg"),
              ),
            SizedBox(height: 20, ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
Container(
  child: Row(
    children: [
         GestureDetector(
           onTap: (){
             setState(() {
                like++;
             });
            
           },
           child: Image.asset("assets/images/heart.png",  height: 30,)),
                SizedBox(width: 5,),
                Text("$like Likes"),
    ],
  ),
),
Container(
  child: Row(
    children: [
         InkWell(
           onTap: (){
             setState(() {
               commnets++;
             });

           },
           child: Image.asset("assets/images/chat.png",  height: 30,)),
                SizedBox(width: 5,),
                Text("$commnets Comments"),
    ],
  ),
),
    
    Container(
  child: Row(
    children: [
         InkWell(
           onTap: (){
             setState(() {
                share++;
             });
            
           },
           child: Image.asset("assets/images/send.png",  height: 30,)),
                SizedBox(width: 5,),
                Text("$share Share"),
    ],
  ),
),
    
               
               
              ],
            )
          ],
        ),
      ),
      ),
    );
  }
}
