import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:uts_ari_aprianto/UTS/login.dart';

class DaftarPage extends StatefulWidget {
  const DaftarPage({super.key});

  @override
  State<DaftarPage> createState() => _DaftarPageState();
}

class _DaftarPageState extends State<DaftarPage> {
   bool _showPassword = true;
  final TextEditingController _passwordController = TextEditingController();
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
                          fontSize: 36,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue
                        ),
                      ),
                      Text(
                        'MART',
                        style: TextStyle(
                          fontSize: 36,
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
                      'Daftar',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text("Silahkan isi data pribadi anda!",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.grey,
                      ),
                    ),
                  ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
              Container(
                width: 400,
                child: Container(
                  child: TextField(
                  decoration: InputDecoration(
                    labelText: 'Nama Lengkap',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                )
              ),
              SizedBox(
              height: 10,
            ),
              Container(
                width: 400,
                child: Container(
                  child: TextField(
                  decoration: InputDecoration(
                    labelText: 'Alamat',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                )
              ),
              SizedBox(
              height: 10,
            ),
              Container(
                width: 400,
                child: Container(
                  child: TextField(
                  decoration: InputDecoration(
                    labelText: 'Username',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                )
              ),
              
              SizedBox(
              height: 10,
            ),
              Container(
                width: 400,
                child: Container(
                  child: TextField(
                    controller: _passwordController,
                    obscureText: _showPassword,
                    decoration: InputDecoration(
                      labelText: 'Password Min. 8 characters',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            _showPassword = !_showPassword;
                          });
                        },
                        icon: Icon(_showPassword
                      ? Icons.remove_red_eye : Icons.visibility_off_outlined
                      )
                      ),
                    ),
                ),
                )
              ),
              SizedBox(
              height: 10,
            ),
              Container(
                width: 400,
                child: Container(
                  child: TextField(
                    controller: _passwordController,
                    obscureText: _showPassword,
                    decoration: InputDecoration(
                      labelText: 'Password Min. 8 characters',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            _showPassword = !_showPassword;
                          });
                        },
                        icon: Icon(_showPassword
                      ? Icons.remove_red_eye : Icons.visibility_off_outlined
                      )
                      ),
                    ),
                ),
                )
              ),
              SizedBox(height: 20),
              Container(
                width:400,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text('Daftar'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    padding: EdgeInsets.symmetric(vertical: 15),
                    textStyle: TextStyle(
                      fontSize: 18, 
                      color: Colors.white
                      ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Sudah punya akun ?"),
                    TextButton(onPressed: 
                    () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) {
                          return LoginPage();
                        })
                      );
                    }, child: Text("Login Disini!", style: TextStyle(
                      color: Colors.blue
                    ),))
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}