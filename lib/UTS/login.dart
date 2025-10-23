import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.only(top: 20, left: 70, right: 10.0),
          child: Column(
            children: [
              Row(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('gambar/Logo.png'),
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  SizedBox(width: 16),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'LKS',
                        style: TextStyle(
                          fontSize: 46,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue
                        ),
                      ),
                      Text(
                        'MART',
                        style: TextStyle(
                          fontSize: 46,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue
                        ),
                      ),
                      
                    ],
                  ),
                ],
              ),
            Container(
              // margin: EdgeInsets.only(top: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                    Text(
                      'Sign In',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text("Enter your ID and Password to sign in!",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey,
                      ),
                    ),
                  ],
              ),
            ),
            Container(
              
              child: SizedBox(
                
                height: 30,
                child: Row(
                  children: [
                    Text("Email: "),
                  ],
                )
              ),
            ),
              Container(
                width: 400,
                child: Container(
                  child: TextField(
                  decoration: InputDecoration(
                    labelText: 'Email',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                )
              ),
              SizedBox(
              
              height: 30,
              child: Row(
                children: [
                  Text("Password: "),
                ],
              )
            ),
              Container(
                width: 400,
                child: Container(
                  child: TextField(
                  decoration: InputDecoration(
                    labelText: 'Password',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                )
              ),
            ],
          ),
        ),

      ),
    );
  }
}