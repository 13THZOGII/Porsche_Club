import 'package:flutter/material.dart';

void main() {
  runApp(const WelcomeScreen());
}

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
    backgroundColor: Colors.black54,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
        body: Center(
          child: Column(
            children: [
              Image.asset("assets/image/logo4.png", width: 300,),
              SizedBox(height: 35,),
              Text("Welcome to Porsche Club", style: TextStyle(fontSize: 40, color: Colors.white)),
              SizedBox(
                width: 84,
                child: ElevatedButton(onPressed: ()=> Navigator.pushNamed(context, 'login'),
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.grey),
                    child: Row(
                      children: [
                        Text("Login", style: TextStyle(color: Colors.white, fontSize: 20),),
                      ],
                )
                ),
              ),
              SizedBox(height: 20),
              Text("Still not a member?", style: TextStyle(fontSize: 25, color: Colors.white)),
              SizedBox(height: 5),
              SizedBox(
                width: 198,
                child: ElevatedButton(onPressed: ()=> Navigator.pushNamed(context, 'register'),
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.grey),
                    child: Row(
                      children: [
                        Text("Join the Porsche Club!", style: TextStyle(color: Colors.white,fontSize: 20),),
                      ],
                    ),
              ),
              ),
                SizedBox(height: 60),
                SizedBox(
                  width: 200,
                  child: Column(
                    children: [
                      Image.asset("assets/image/12.png"),
                    ],
                ),
              ),
                ],
              )
            ),
          );
}