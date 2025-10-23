import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Row(
          children: [
            Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage("gambar/Logo.png")),
              ),
            ),
            Container(
              child: Text("LKS", style: TextStyle(
                fontSize: 46
              ),),
            ),
            Container(
              child: Text("MART", style: TextStyle(
                fontSize: 46
              ),),
            )
          ],
        ),
      ),
    );
  }
}