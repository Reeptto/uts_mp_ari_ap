import 'package:flutter/material.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage("gambar/Logo.png"))
            ),
          ),
          SizedBox(width: 10,),
          Container(
            margin: EdgeInsets.only(top: 10),
            child: Text("LKS MART", style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w800,
              color: Colors.blueAccent
            ),),
          )
        ],

        
      ),
    );
  }
}