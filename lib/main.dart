import 'package:flutter/material.dart';
import './pages/Help.dart';
import './pages/Support.dart';
import './pages/login.dart';
import './pages/score.dart';
import './pages/user.dart';
//import './pages/existing.dart';
//import 'package:english_words/english_words.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      title: 'Mem Game',
      initialRoute: '/',
      routes: {
        '/': (context) => MyHomePage(),
        '/second': (context) => Help(),
        '/third': (context) => Support(),
        '/forth': (context) => Categories(),
        '/Login': (context) => Login(),
        '/score': (context) => Score(),
        '/user': (context) => NewUser(),
        '/categories': (context) => Categories(),
        '/existing': (context) => Existing(),
      },
    );
  }
}

class ButtonC extends StatefulWidget {
  @override
  _ButtonCState createState() => _ButtonCState();
}

class _ButtonCState extends State<ButtonC> {
  int bottomNavIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: Center(
        child: new Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: 50.0),
            Img(),
            SizedBox(height: 20.0),
            new RaisedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/existing');
              },
              color: Colors.green,
              padding:
                  new EdgeInsets.only(left: 70, right: 70, top: 30, bottom: 30),
              //padding: new EdgeInsets.all(30.0),
              shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(30.0)),
              child: Text('PLAY',
                  style: TextStyle(color: Colors.black, fontSize: 20.0)),
            ),
            SizedBox(width: 50.0, height: 10.0),
            new RaisedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/score');
              },
              color: Colors.red,
              padding:
                  new EdgeInsets.only(left: 60, right: 60, top: 30, bottom: 30),

              // padding: new EdgeInsets.all(30.0),
              shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(30.0)),
              child: Text('SCORES',
                  style: TextStyle(color: Colors.black, fontSize: 20.0)),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: bottomNavIndex,
        fixedColor: Colors.red,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.contacts),
              title: Text('Login',
                  style: new TextStyle(fontWeight: FontWeight.bold))),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite_border),
              title: Text('Rate Us',
                  style: new TextStyle(fontWeight: FontWeight.bold))),
        ],
        onTap: onTabTapped,
      ),
    );
  }

  void onTabTapped(int index) {
    setState(() {
      bottomNavIndex = index;
      if (index == 0) {
        Navigator.pushNamed(context, '/Login');
      } else {
        //Navigator.pushNamed(context, '/third');
      }
    });
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Mem Game')),
        body: ButtonC(),
        drawer: Drawer(
            child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text(
                'Menu',
                style: TextStyle(fontSize: 30.0),
              ),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              margin: EdgeInsets.all(0.0),
              padding: EdgeInsets.all(20.0),
            ),
            ListTile(
              title: Text('Help',
                  style:
                      new TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
              onTap: () {
                Navigator.pushNamed(context, '/second');
              },
            ),
            ListTile(
              title: Text('Support Us',
                  style:
                      new TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
              onTap: () {
                Navigator.pushNamed(context, '/third');
              },
            )
          ],
        )));
  }
}

class Img extends StatefulWidget {
  @override
  _ImgPage createState() => _ImgPage();
}

class _ImgPage extends State<Img> with SingleTickerProviderStateMixin {
  Animation<double> animation;
  AnimationController animationController;

  @override
  void initState() {
    super.initState();

    animationController = new AnimationController(
        vsync: this, duration: Duration(milliseconds: 5000));
    animation =
        Tween<double>(begin: 100.0, end: 200.0).animate(animationController);
    animation.addListener(() {
      setState(() {
        print(animation.value.toString());
      });
    });
    animation.addStatusListener((status) => print(status));
    animationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    //var assetsImage = new AssetImage('assets/brain.png');
    //var image = new Image(
    //    image: assetsImage, width: 100.0, height: 200.0, fit: BoxFit.fill);
    return Center(
      //child: image,
      child: Container(
        height: animation.value,
        width: animation.value,
        child: Abc(),
      ),
    );
  }
}

class Abc extends StatelessWidget {
  var assetsImage = new AssetImage('assets/brain.png');
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: new BoxDecoration(
          shape: BoxShape.circle,
          image: new DecorationImage(fit: BoxFit.fill, image: assetsImage)),
    );
  }
}
