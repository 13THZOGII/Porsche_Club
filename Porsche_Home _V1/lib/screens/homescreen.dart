import 'package:flutter/material.dart';
import 'package:porsche_home/screens/postsSection.dart';

void main() {
  runApp(const HomeScreen());
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) => Scaffold(
    backgroundColor: Colors.black,
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.white
        ),
        title: Text("Welcome Again!", style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.black,
      ),
      drawer: Drawer(
        backgroundColor: Colors.black,
        child: Column(
          children: [
            Profile(avatar: "assets/image/avatar1.png", name: "Kemal Demir", onTap: () {
              Navigator.pushNamed(context, 'profile');
            },),
            Expanded(child: Column(
              children: [
                Divider(),
                menuitem(title: "Home Screen", icon: Icon(Icons.home,color: Colors.white,), onTap: () {}),
                menuitem(title: "Own a New Porsche", icon: Icon(Icons.directions_car,color: Colors.white,), onTap: () {
                  Navigator.pushNamed(context, 'ownporsche');
                }),
                menuitem(title: "Porsche History", icon: Icon(Icons.info,color: Colors.white,), onTap: () {
                  Navigator.pushNamed(context, 'aboutus');
                }),
                menuitem(title: "Contact Us", icon: Icon(Icons.message,color: Colors.white,), onTap: () {
                  Navigator.pushNamed(context, 'contact');
                }),
                Divider(),
                menuitem(title: "Settings", icon: Icon(Icons.settings,color: Colors.white,), onTap: () {
                  Navigator.pushNamed(context, 'settings');
                }),
                Divider(),
                menuitem(icon: Icon(Icons.exit_to_app,color: Colors.white,), onTap: () {
                  Navigator.pushNamedAndRemoveUntil(context, 'welcome', (Route<dynamic> route) => false);
                } ,title: "Logout",),
              ],
            )),
            Text("Version 1.01", style: TextStyle(color: Colors.grey),),
            SizedBox(height: 5,)
          ],
        ),
      ),
      body: PostsSections(),
    );
}

class Profile extends StatelessWidget {
  final Function()? onTap;
  final String avatar;
  final String name;

  const Profile({
    super.key, this.onTap, required this.avatar, required this.name,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(
            horizontal: 10, vertical: 30),
        child: Row(
          children: [
            Container(
              padding: EdgeInsets.all(3),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white10,
              ),
              child: Container(
                padding: EdgeInsets.all(2),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,),
                child: CircleAvatar(
                  backgroundImage: AssetImage(avatar),
                  radius: 30,
                ),
              ),
            ),
            SizedBox(width: 10,),
            Text(name, style: TextStyle(color: Colors.white, fontSize: 30),),
          ],
        ),
      ),
    );
  }
}

class menuitem extends StatelessWidget {
  final Function()? onTap;
  final String title;
  final Icon icon;
  const menuitem({
    super.key, required this.title, required this.icon, required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            icon,
            SizedBox(width: 5,),
            Text(title, style: TextStyle(color: Colors.white, fontSize: 30),),
          ],
        ),
      ),
    );
  }
}
