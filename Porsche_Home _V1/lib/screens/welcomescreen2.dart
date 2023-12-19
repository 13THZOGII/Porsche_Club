import 'package:flutter/material.dart';

void main() {
  runApp(const WelcomeScreen2());
}

class WelcomeScreen2 extends StatelessWidget {
  const WelcomeScreen2({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) => Scaffold(
    backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10,bottom: 0,right: 5,left: 20),
              child: Text("Welcome to the new Porsche app."
                  " Here you can share your photos,"
                  " socialize with other people in the Porsche Club"
                  " or become a new Porsche owner.                                      Are You Ready?",
                style: TextStyle(fontSize: 40, color: Colors.white),),
            ),
            SizedBox(height: 20,),
            SizedBox(
              width: 193,
              child: ElevatedButton(onPressed: ()=>
                  Navigator.pushNamedAndRemoveUntil(context, 'home', (Route<dynamic> route) => false),
                style: ElevatedButton.styleFrom(backgroundColor: Colors.grey),
                child: Row(
                  children: [
                    Text("let's get started", style: TextStyle(color: Colors.white,fontSize: 25),),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
}
