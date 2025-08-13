import 'package:flutter/material.dart';

class Sender extends StatelessWidget{
  final String message;
  final String? imagePath;
  const Sender({required this.message,this.imagePath,super.key});
  @override
  Widget build(BuildContext context) {
    return
      Align(
        alignment: Alignment.centerRight,
        child: Container(
          padding: EdgeInsets.all(13), // Internal padding
          constraints: BoxConstraints(
          ),
          margin: EdgeInsets.fromLTRB(110,4, 16, 4),
          decoration: BoxDecoration(
            color: Color(0xff232D36),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(16),
              bottomLeft: Radius.circular(16),
              bottomRight: Radius.circular(16),
            ),
          ),
          child: Column(
            children: [
              Text(message,
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  fontFamily: "SF Pro",
                ),
              ),
              if (imagePath != null)
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image(image: AssetImage(imagePath!),fit: BoxFit.cover,),
                )
            ],
          ),
        ),
      );
  }
}