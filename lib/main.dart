import 'package:assignment_1/receiver.dart';
import 'package:assignment_1/sender.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    Receiver receiver = Receiver(message: "hello");

    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: Scaffold(
        extendBody: true,
        appBar: AppBar(
          backgroundColor: Color(0xff168C4B),
          leading: Icon(Icons.chevron_left, size: 35,color: Colors.white),
          titleSpacing: 0,
          title:  Row(
            children: [
              ClipOval(
                child: SizedBox(
                  width: 50,
                  height: 50,
                  child: Image(image: AssetImage("assets/images/profile.png"),fit: BoxFit.cover,),
                ),
              ),
              Container(
                margin: EdgeInsets.all(10),
                child:
                Text("John Safwat", style: TextStyle(color:Color(0xFFffffff),fontFamily:"SF Pro")
                )
              )
            ],
          ),

          actions: [
            IconButton( icon: Image.asset('assets/icons/Phone.png')
              ,onPressed: (){}),
            IconButton( icon: Image.asset('assets/icons/video.png')
                ,onPressed: (){}),
            IconButton( icon: Image.asset('assets/icons/options.png'),
                onPressed: (){}),
          ],
          bottom: PreferredSize(
              preferredSize: Size.fromHeight(10), // Zero height
              child: Container()
              ),
        ),
        body:SizedBox.expand(
          child: Stack(
              children: [
                Positioned.fill(
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/cover.jpg'),
                        fit: BoxFit.cover, // Ensures full coverage
                      ),
                    ),

                  ),
                ),
                Column(
                  children: [
                    SizedBox(height: 25,),
                    Receiver(message: "Hello !",),
                    Sender(message: "Hello !",),
                    Receiver(message: "Hey! Have you ever thought about how random moments can sometimes turn into the best memories? It’s like the universe loves to surprise us when we least expect it!",),
                    Receiver(message: "what a Great Content Tp learn Flutter",imagePath: "assets/images/route.png",),
                    Sender(message: "what a Great Content Tp learn Flutter",),


                  ],
                ),
              ],
          ),
        ),
        bottomNavigationBar: Container(
          margin: EdgeInsets.fromLTRB(16, 0, 16, 32),
          decoration: BoxDecoration(
          ),
          child: Row(
            children: [
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon:
                    IconButton(
                        icon: Image.asset('assets/icons/Camera.png',width: 40,height: 40,),
                        onPressed: (){}),

                    suffixIcon:
                    IconButton(
                        icon: Image.asset('assets/icons/Send.png',width: 40,height: 40,),
                        onPressed: (){}),
                    hintText: 'Type a message…',

                      border: OutlineInputBorder(
                         borderRadius: BorderRadius.circular(50),
                        borderSide: BorderSide(color: Color(0xff168C4B)),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                        borderSide: BorderSide(color: Color(0xff168C4B),width:2),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                        borderSide: BorderSide(color: Color(0xff168C4B)),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                        borderSide: BorderSide(color: Color(0xff168C4B)),
                      ),
                    filled: false,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 8),
                width: 50,
                height: 50,
                decoration: (
                BoxDecoration(
                  color: Color(0xff168C4B),
                  borderRadius: BorderRadius.circular(50),
                )
                ),
                child: Icon(Icons.mic,color: Color(0xffffffff),),
              )
            ],
          ),
        )
      ),
    );
  }
}
