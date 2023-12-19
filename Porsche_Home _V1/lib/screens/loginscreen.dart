import 'package:flutter/material.dart';

void main() {
  runApp(const LoginScreen());
}

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) => Scaffold(
    backgroundColor: Colors.black,
      appBar: AppBar(
        leading: const BackButton(
          color: Colors.white,
        ),
        title: Text("Login Porsche App", style: TextStyle(color: Colors.white, fontSize: 30),),
        backgroundColor: Colors.black,
      ),
        body: Center(
        child: Column(
          children: [
            SizedBox(height: 40),
            Text("Email", style: TextStyle(color: Colors.white, fontSize: 30)),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 30.0),
              margin: EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                  color: const Color.fromARGB(49, 158, 158, 158),
                  borderRadius: BorderRadius.circular(15) 
              ),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Enter Your Email Address",
                  hintStyle: TextStyle(color: Colors.white),
                ),
              ),
            ),
            SizedBox(height: 20,),
            Text("Password", style: TextStyle(color: Colors.white, fontSize: 30)),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 30.0),
              margin: EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                  color: const Color.fromARGB(49, 158, 158, 158),
                  borderRadius: BorderRadius.circular(15)
              ),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Enter Your Password",
                  hintStyle: TextStyle(color: Colors.white,),
                ),
              ),
            ),
            SizedBox(height: 20),
            SizedBox(
              width: 85,
              child: ElevatedButton(onPressed: ()=>
                  Navigator.pushNamedAndRemoveUntil(context, 'welcome2', (Route<dynamic> route) => false),
                style: ElevatedButton.styleFrom(backgroundColor: Colors.grey),
                child: Row(
                  children: [
                    Text("Login", style: TextStyle(color: Colors.white,fontSize: 20),),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
}