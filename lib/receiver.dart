import 'package:flutter/material.dart';

class Receiver extends StatelessWidget{
  final String message;
  final String? imagePath;
  const Receiver({required this.message,this.imagePath,super.key});
  @override
  Widget build(BuildContext context) {
    return
      Align(
          alignment: Alignment.centerLeft,
          child: Container(
            padding: EdgeInsets.all(13), // Internal padding
            constraints: BoxConstraints(
            ),
            margin: EdgeInsets.fromLTRB(16,8, 110, 8),
            decoration: BoxDecoration(
              color: Color(0xff168C4B),
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(16),
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