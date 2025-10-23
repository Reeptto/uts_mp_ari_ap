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
                image: DecorationImage(image: AssetImage("gambar/Logo.png"))
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: Text("LKS", style: TextStyle(
                        fontSize: 56,
                        fontStyle: 
                      ),),
                    ),
                    Container(
                      child: Text("MART", style: TextStyle(
                        fontSize: 56
                      ),),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}