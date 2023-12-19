import 'package:flutter/material.dart';
import 'package:porsche_home/screens/homescreen.dart';

void main() {
  runApp(const SettingsScreen());
}

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) => Scaffold(
    backgroundColor: Colors.black,
      appBar: AppBar(
        leading: const BackButton(
          color: Colors.white,
        ),
        backgroundColor: Colors.black,
        title: Text("Settings", style: TextStyle(color: Colors.white, fontSize: 25),),
      ),
      body: Center(
          child: Column(
            children: [
              menuitem(title: "App Settings", icon: Icon(Icons.settings, color: Colors.white,), onTap: () {}),
              Divider(),
              menuitem(title: "Payments", icon: Icon(Icons.payment, color: Colors.white,), onTap: () {}),
              menuitem(title: "Notifications", icon: Icon(Icons.notifications, color: Colors.white,), onTap: () {}),
              menuitem(title: "Privacy & Security", icon: Icon(Icons.security, color: Colors.white,), onTap: () {}),
              menuitem(title: "Apperance", icon: Icon(Icons.visibility, color: Colors.white,), onTap: () {}),
              menuitem(title: "Send feedback", icon: Icon(Icons.feedback, color: Colors.white,), onTap: () {}),
              menuitem(title: "help", icon: Icon(Icons.help, color: Colors.white,), onTap: () {}),
              menuitem(title: "Wallpapers and Themes", icon: Icon(Icons.wallpaper, color: Colors.white,), onTap: () {}),
              menuitem(title: "scan qr code", icon: Icon(Icons.qr_code, color: Colors.white,), onTap: () {}),
              menuitem(title: "language", icon: Icon(Icons.language, color: Colors.white,), onTap: () {})
            ],
          ),
          )
    );
}