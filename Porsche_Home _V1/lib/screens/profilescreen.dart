import 'package:flutter/material.dart';
import 'package:porsche_home/screens/homescreen.dart';

void main() {
  runApp(const ProfileScreen());
}

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) => Scaffold(
    backgroundColor: Colors.black,
      appBar: AppBar(
        leading: const BackButton(
          color: Colors.white,
        ),
        title: Text("Your Profile", style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.black,
      ),
      body: Center(
          child: Column(
            children: [
              Profile(avatar: 'assets/image/avatar1.png', name: 'Kemal Demir'),
              Divider(),
              menuitem(title: "kemaldemir@hotmail.com", icon: Icon(Icons.mail, color: Colors.white,), onTap: () {}),
              Divider(),
              menuitem(title: "+90 551 156 15 26", icon: Icon(Icons.phone, color: Colors.white,), onTap: () {}),
              Divider(),
              menuitem(title: "Date of birth: 2003-11-08", icon: Icon(Icons.calendar_month, color: Colors.white,), onTap: () {}),
            ],
          ),
        ),
      );
}
