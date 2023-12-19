import 'package:flutter/material.dart';
import 'package:porsche_home/screens/homescreen.dart';

void main() {
  runApp(const ContactUs());
}

class ContactUs extends StatelessWidget {
  const ContactUs({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) => Scaffold(
    backgroundColor: Colors.black,
        appBar: AppBar(
          leading: const BackButton(
            color: Colors.white,
          ),
          backgroundColor: Colors.black,
          title: Text("Contact Us", style: TextStyle(color: Colors.white, fontSize: 25),),
        ),
        body: Center(
            child: Column(
              children: [
                Image.asset("assets/image/logo123.png", width: 250,),
                Divider(),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text("As Porsche, we always stand behind our customers. Do you need help with anything? Call us now.",
                      style: TextStyle(color: Colors.white, fontSize: 30)
                  ),
                ),
                menuitem(title: "+90 552 252 25 36", icon: Icon(Icons.phone, color: Colors.white,), onTap: () {}),
                Divider()
              ],
            )
        )
    );
}
