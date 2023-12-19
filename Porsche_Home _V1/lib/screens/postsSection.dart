  import 'package:flutter/material.dart';

  class PostsSections extends StatelessWidget {
    const PostsSections({super.key});


    // This widget is the root of your application.
    @override
    Widget build(BuildContext context) => Scaffold(
        backgroundColor: Colors.black,
      body: Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          children: [
          Expanded(
            child: SingleChildScrollView(
              child: Container(
                child: Column(
                    children: [
                    SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                        StoryWidget2(),
                        StoryWidget3(),
                        StoryWidget4(),
                        StoryWidget5(),
                        StoryWidget6(),
                    ],
                    ),
                    ),
                    SizedBox(height: 10,),
                    Postitem(),
                    SizedBox(height: 10,),
                    Postitem2(),
                    SizedBox(height: 10,),
                    Postitem3(),
                    SizedBox(height: 10,),
                    Postitem4(),
              ],
            ),color: Colors.black),
          )
        ),
      ],
    ),
    ),
  );
}


  Container Postitem() => Container(
    child: Column(
      children: [
      Padding(
      padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          Row(
            children: [
            CircleAvatar(
            backgroundImage: AssetImage("assets/image/avatar1.png"),
            radius: 20,
            ),
            SizedBox(width: 10,),
            Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            Text("Kemal Demir", style: TextStyle(fontSize: 18, color: Colors.white),),
            Text("İstanbul", style: TextStyle(fontSize: 15, fontWeight: FontWeight.normal, color: Colors.white),)
            ],
          ),
        ],
    ),
          Icon(Icons.more_horiz)
          ],
        ),
      ),
        Image.asset("assets/image/araba1.jpg"),
        Likebox(),
        commentbox(),
        commentbox2()
      ],
    ),
  );

    Container Postitem2() => Container(
      child: Column(
        children: [
        Padding(
        padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            Row(
              children: [
              CircleAvatar(
              backgroundImage: AssetImage("assets/image/2.png"),
              radius: 20,
              ),
              SizedBox(width: 10,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                Text("Sena Bezirkan", style: TextStyle(fontSize: 18, color: Colors.white),),
                Text("Trabzon", style: TextStyle(fontSize: 15, fontWeight: FontWeight.normal, color: Colors.white),)
              ],
            ),
          ],
      ),
            Icon(Icons.more_horiz)
          ],
        ),
    ),
          Image.asset("assets/image/araba2.jpg"),
          Likebox(),
          commentbox(),
          commentbox2()
        ],
      ),
    );

    Container Postitem3() => Container(
      child: Column(
        children: [
        Padding(
        padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            Row(
              children: [
              CircleAvatar(
              backgroundImage: AssetImage("assets/image/kedi.png"),
              radius: 20,
              ),
              SizedBox(width: 10,),
              Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Mustafa Oğus", style: TextStyle(fontSize: 18, color: Colors.white),),
                Text("Bitlis", style: TextStyle(fontSize: 15, fontWeight: FontWeight.normal, color: Colors.white),)
              ],
            ),
          ],
        ),
            Icon(Icons.more_horiz)
            ],
            ),
        ),
          Image.asset("assets/image/araba3.jpg"),
          Likebox(),
          commentbox(),
          commentbox2()
    ],
    ),
    );

    Container Postitem4() => Container(
      child: Column(
        children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
          Row(
            children: [
            CircleAvatar(
            backgroundImage: AssetImage("assets/image/kedi2.png"),
            radius: 20,
            ),
            SizedBox(width: 10,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              Text("Caner Doğan", style: TextStyle(fontSize: 18, color: Colors.white),),
              Text("Muğla", style: TextStyle(fontSize: 15, fontWeight: FontWeight.normal, color: Colors.white),)
              ],
          ),
        ],
      ),
            Icon(Icons.more_horiz)
        ],
      ),
    ),
        Image.asset("assets/image/araba4.jpg"),
        Likebox(),
        commentbox(),
        commentbox2()
        ],
      ),
    );

    Padding Likebox() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
        Row(
          children: [
          Icon(Icons.favorite_border, color: Colors.white,),
          SizedBox(width: 9,),
          Icon(Icons.comment_bank_outlined, color: Colors.white),
        ],
      ),
        SizedBox(width: 9,),
        Icon(Icons.flag_circle_outlined, color: Colors.white),
        ],),
      );
    }

    Padding commentbox() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row (
      children: [
        Text("Şehmus Karan", style: TextStyle(color: Colors.white),),
        SizedBox(width: 5,),
        Text("Çok Güzel Fotoğraf!", style: TextStyle(color: Colors.grey),)
        ],
      ),
    );
    }

    Padding commentbox2() {
    return Padding(
    padding: const EdgeInsets.only(left: 8,top: 2),
      child: Row (
      children: [
        Text("Fulya Özger", style: TextStyle(color: Colors.white),),
        SizedBox(width: 5,),
        Text("Elinize Sağlık Gerçekten Güzel Fotoğraf!", style: TextStyle(color: Colors.grey),)
      ],
    ),
    );
    }

    Widget StoryWidget() {
    return Padding(
    padding: const EdgeInsets.all(3),
    child: Column(
    children: [
    Container(
    padding: EdgeInsets.all(3),
    decoration: BoxDecoration(
    color: Colors.green,
    gradient: LinearGradient(colors: [
    Colors.grey,
    Colors.red
    ]
    ),
    shape: BoxShape.circle
    ),
    child: CircleAvatar(
    backgroundImage: AssetImage("assets/image/1.jpg"),
    radius: 40,
    ),
    ),
    SizedBox(height: 5,),
    Text("Meltem_Okant", style: TextStyle(fontSize: 15,color: Colors.white),)
    ],
    ),
    );
    }
  Widget StoryWidget2() {
  return Padding(
    padding: const EdgeInsets.all(3),
      child: Column(
        children: [
        Container(
          padding: EdgeInsets.all(3),
          decoration: BoxDecoration(
          color: Colors.green,
          gradient: LinearGradient(colors: [
          Color.fromRGBO(255, 36, 36, 1),
          Color.fromRGBO(255, 36, 36, 0.6),
          ]
        ),
        shape: BoxShape.circle
        ),
          child: CircleAvatar(
          backgroundImage: AssetImage("assets/image/10.jpg"),
          radius: 40,
        ),
      ),
        SizedBox(height: 5,),
        Text("Fatih_Yılmaz", style: TextStyle(fontSize: 15,color: Colors.white),)
      ],
    ),
  );
  }

  Widget StoryWidget3() {
  return Padding(
  padding: const EdgeInsets.all(3),
  child: Column(
  children: [
  Container(
  padding: EdgeInsets.all(3),
  decoration: BoxDecoration(
  color: Colors.green,
  gradient: LinearGradient(colors: [
    Color.fromRGBO(255, 36, 36, 1),
    Color.fromRGBO(255, 36, 36, 0.6),
  ]
  ),
  shape: BoxShape.circle
  ),
  child: CircleAvatar(
  backgroundImage: AssetImage("assets/image/3.jpg"),
  radius: 40,
  ),
  ),
  SizedBox(height: 5,),
  Text("Zehra_Güneş", style: TextStyle(fontSize: 15,color: Colors.white),)
  ],
  ),
  );
  }

  Widget StoryWidget4() {
  return Padding(
  padding: const EdgeInsets.all(3),
  child: Column(
  children: [
  Container(
  padding: EdgeInsets.all(3),
  decoration: BoxDecoration(
  color: Colors.green,
  gradient: LinearGradient(colors: [
    Color.fromRGBO(255, 36, 36, 1),
    Color.fromRGBO(255, 36, 36, 0.6),
  ]
  ),
  shape: BoxShape.circle
  ),
  child: CircleAvatar(
  backgroundImage: AssetImage("assets/image/4.jpg"),
  radius: 40,
  ),
  ),
  SizedBox(height: 5,),
  Text("Murat_Kaya", style: TextStyle(fontSize: 15,color: Colors.white),)
  ],
  ),
  );
  }

  Widget StoryWidget5() {
  return Padding(
  padding: const EdgeInsets.all(3),
  child: Column(
  children: [
  Container(
  padding: EdgeInsets.all(3),
  decoration: BoxDecoration(
  color: Colors.green,
  gradient: LinearGradient(colors: [
    Color.fromRGBO(255, 36, 36, 1),
    Color.fromRGBO(255, 36, 36, 0.6),
  ]
  ),
  shape: BoxShape.circle
  ),
  child: CircleAvatar(
  backgroundImage: AssetImage("assets/image/5.jpg"),
  radius: 40,
  ),
  ),
  SizedBox(height: 5,),
  Text("Berke_Coşkun", style: TextStyle(fontSize: 15,color: Colors.white),)
  ],
  ),
  );
  }

  Widget StoryWidget6() {
  return Padding(
  padding: const EdgeInsets.all(3),
  child: Column(
  children: [
  Container(
  padding: EdgeInsets.all(3),
  decoration: BoxDecoration(
  color: Colors.green,
  gradient: LinearGradient(colors: [
    Color.fromRGBO(255, 36, 36, 0.8),
    Color.fromRGBO(255, 36, 36, 0.6),
  ]
  ),
  shape: BoxShape.circle
  ),
  child: CircleAvatar(
  backgroundImage: AssetImage("assets/image/6.jpg"),
  radius: 40,
  ),
  ),
  SizedBox(height: 5,),
  Text("Mert_Demir", style: TextStyle(fontSize: 15,color: Colors.white),)
  ],
  ),
  );
  }


  @override
  Widget build(BuildContext context) {
    return Container();
  }