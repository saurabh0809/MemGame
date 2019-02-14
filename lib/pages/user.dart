import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'words.dart';
import '../main.dart';

class NewUser extends StatefulWidget {
  @override
  _NewUserState createState() => _NewUserState();
}

class _NewUserState extends State<NewUser> {
  var currImage = new AssetImage('assets/avatars/icon1.png');
  var icon1Image = new AssetImage('assets/avatars/icon1.png');
  var icon2Image = new AssetImage('assets/avatars/icon2.png');
  var icon3Image = new AssetImage('assets/avatars/icon3.png');
  var icon4Image = new AssetImage('assets/avatars/icon4.png');
  bool selected = false;
  var _controller_key = TextEditingController();

  String _a;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: new Text('New User'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.home),
            onPressed: () {
              Navigator.push(
                  context,
                  new MaterialPageRoute(
                      builder: (context) => new MyHomePage()));
            },
          ),
        ],
      ),
      body: new Container(
        padding: new EdgeInsets.all(20.0),
        child: new Form(
          child: new ListView(
            children: <Widget>[
              new TextFormField(
                controller: _controller_key,
                autofocus: false,
                keyboardType: TextInputType.text,
                decoration: new InputDecoration(
                    hintText: 'Spiderman', labelText: 'User Name'),
              ),
              SizedBox(height: 30.0),
              new ListTile(
                leading: const Icon(Icons.label),
                title: const Text('Choose Your Avatar'),
              ),
              new Material(
                elevation: 0.0,
                shape: new CircleBorder(),
                color: Colors.grey,
                child: Ink.image(
                  image: currImage,
                  fit: BoxFit.none,
                  width: 80,
                  height: 100,
                  child: InkWell(
                    onTap: () {},
                    child: null,
                  ),
                ),
              ),
              Row(
                children: <Widget>[
                  SizedBox(width: 15.0),
                  new Material(
                    elevation: 0.0,
                    shape: new CircleBorder(),
                    color: Colors.transparent,
                    child: Ink.image(
                      image: icon1Image,
                      fit: BoxFit.none,
                      width: 70,
                      height: 100,
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            currImage = icon1Image;
                            _a = 'assets/avatars/icon1.png';
                          });
                        },
                        child: null,
                      ),
                    ),
                  ),
                  SizedBox(width: 2.0),
                  new Material(
                    elevation: 0.0,
                    shape: CircleBorder(),
                    color: Colors.transparent,
                    child: Ink.image(
                      image: icon2Image,
                      fit: BoxFit.none,
                      width: 70,
                      height: 100,
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            currImage = icon2Image;
                            _a = 'assets/avatars/icon2.png';
                          });
                        },
                        child: null,
                      ),
                    ),
                  ),
                  SizedBox(width: 2.0),
                  new Material(
                    elevation: 0.0,
                    shape: CircleBorder(),
                    color: Colors.transparent,
                    child: Ink.image(
                      image: icon3Image,
                      fit: BoxFit.none,
                      width: 70,
                      height: 100,
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            currImage = icon3Image;

                            _a = 'assets/avatars/icon3.png';
                          });
                        },
                        child: null,
                      ),
                    ),
                  ),
                  SizedBox(width: 2.0),
                  new Material(
                    elevation: 0.0,
                    shape: CircleBorder(),
                    color: Colors.transparent,
                    child: Ink.image(
                      image: icon4Image,
                      fit: BoxFit.none,
                      width: 70,
                      height: 100,
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            currImage = icon4Image;

                            _a = 'assets/avatars/icon4.png';
                          });
                        },
                        child: null,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 50.0),
              new RaisedButton(
                child: new Text('Continue'),
                onPressed: () {
                  saveData();
                  savedData();
                },
              )
            ],
          ),
        ),
      ),
    );
  }

  void saveData() async {
    String name = _controller_key.text;
    saveNamePreference(name).then((bool committed) {
      setState(() {
        name = _controller_key.text;
      });

      Navigator.push(
          context,
          new MaterialPageRoute(
            builder: (context) => new Categories(),
          ));
    });
  }

  void savedData() async {
    String a = _a;
    saveNamePreferences(a).then((bool committed) {
      setState(() {
        a = _a;
      });
    });
  }
}

Future<bool> saveNamePreference(String name) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  prefs.setString("name", name);
  return prefs.commit();
}

Future<String> getNamePreference() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  String name = prefs.getString("name");
  return name;
}

//a
Future<bool> saveNamePreferences(String a) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  prefs.setString("a", a);
  return prefs.commit();
}

Future<String> getNamePreferencses() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  String a = prefs.getString("a");
  return a;
}

class Categories extends StatefulWidget {
  static String routeName = '/categories';
  //var myObject;
  //Categories({this.myObject});

  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
//CLASS CATEGORY
  String _name = "";
  String _a = '';
  var newImage;

  SharedPreferences sharedPreferences;

  @override
  void initState() {
    getNamePreference().then(updateName);
    getNamePreferencses().then(updateA);
    super.initState();
  }

  void updateName(String name) {
    setState(() {
      this._name = name;
    });
  }

  void updateA(String a) {
    setState(() {
      this._a = a;
      this.newImage = new AssetImage(a);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lime,
      appBar: AppBar(
        title: Text('Categories'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.home),
            onPressed: () {
              Navigator.push(
                  context,
                  new MaterialPageRoute(
                      builder: (context) => new MyHomePage()));
            },
          ),
        ],
      ),
      body: Center(
          child: new Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          new Text(
            "Hey, " + _name + " ",
            style: TextStyle(fontSize: 20.0),
          ),
          SizedBox(
            height: 10.0,
          ),
          new Material(
            elevation: 0.0,
            shape: CircleBorder(),
            color: Colors.transparent,
            child: Ink.image(
              image: newImage,
              fit: BoxFit.none,
              width: 80,
              height: 100,
              child: InkWell(
                onTap: () {},
                child: null,
              ),
            ),
          ),
          RaisedButton(
            padding:
                new EdgeInsets.only(left: 60, right: 60, top: 30, bottom: 30),
            onPressed: () {},
            child: Text('Random', style: new TextStyle(fontSize: 20)),
            color: Colors.blue,
            shape: new RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(30.0)),
          ),
          SizedBox(height: 10.0),
          RaisedButton(
            padding:
                new EdgeInsets.only(left: 65, right: 65, top: 30, bottom: 30),
            onPressed: () {
              Navigator.of(context)
                  .push(new MaterialPageRoute(builder: (context) => Words()));
            },
            child: Text('Words', style: new TextStyle(fontSize: 20)),
            color: Colors.blue,
            shape: new RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(30.0)),
          ),
          SizedBox(height: 10.0),
          RaisedButton(
            padding:
                new EdgeInsets.only(left: 58, right: 58, top: 30, bottom: 30),
            onPressed: () {},
            child: Text('Numbers', style: new TextStyle(fontSize: 20)),
            color: Colors.blue,
            shape: new RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(30.0)),
          ),
          SizedBox(height: 10.0),
          RaisedButton(
            padding:
                new EdgeInsets.only(left: 58, right: 58, top: 30, bottom: 30),
            onPressed: () {
              Navigator.of(context).push(
                  new MaterialPageRoute(builder: (context) => Existing()));
            },
            child: Text('Back', style: new TextStyle(fontSize: 20)),
            color: Colors.blue,
            shape: new RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(30.0)),
          ),
        ],
      )),
    );
  }
}

class Existing extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Select User'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.home),
            onPressed: () {
              Navigator.push(
                  context,
                  new MaterialPageRoute(
                      builder: (context) => new MyHomePage()));
            },
          ),
        ],
      ),
      body: Center(
          child: new Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          new Text(
            "Select New / Existing User",
            style: TextStyle(fontSize: 20.0),
          ),
          SizedBox(
            height: 10.0,
          ),
          RaisedButton(
            padding:
                new EdgeInsets.only(left: 50, right: 50, top: 30, bottom: 30),
            onPressed: () {
              Navigator.of(context).push(
                  new MaterialPageRoute(builder: (context) => Categories()));
            },
            child: Text('Existing User', style: new TextStyle(fontSize: 20)),
            color: Colors.blue,
            shape: new RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(30.0)),
          ),
          SizedBox(height: 10.0),
          RaisedButton(
            padding:
                new EdgeInsets.only(left: 65, right: 65, top: 30, bottom: 30),
            onPressed: () {
              Navigator.of(context)
                  .push(new MaterialPageRoute(builder: (context) => NewUser()));
            },
            child: Text('New User', style: new TextStyle(fontSize: 20)),
            color: Colors.blue,
            shape: new RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(30.0)),
          ),
        ],
      )),
    );
  }
}
