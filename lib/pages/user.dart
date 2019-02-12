import 'package:flutter/material.dart';
import './categories.dart';

class NewUser extends StatefulWidget {
  @override
  _NewUserState createState() => _NewUserState();
}

class _NewUserState extends State<NewUser> {
  var icon1Image = new AssetImage('assets/avatars/icon1.png');
  var icon2Image = new AssetImage('assets/avatars/icon2.png');
  var icon3Image = new AssetImage('assets/avatars/icon3.png');
  var icon4Image = new AssetImage('assets/avatars/icon4.png');
  var icon5Image = new AssetImage('assets/avatars/icon5.png');
  var icon6Image = new AssetImage('assets/avatars/icon6.png');
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: new Text('New User'),
      ),
      body: new Container(
        padding: new EdgeInsets.all(20.0),
        child: new Form(
          child: new ListView(
            children: <Widget>[
              new TextFormField(
                autofocus: true,
                keyboardType: TextInputType.text,
                decoration: new InputDecoration(
                    hintText: 'Spiderman', labelText: 'User Name'),
              ),
              SizedBox(height: 30.0),
              new ListTile(
                leading: const Icon(Icons.label),
                title: const Text('Choose Your Avatar'),
              ),
              Row(
                children: <Widget>[
                  SizedBox(width: 40.0),
                  new Material(
                    elevation: 4.0,
                    shape: new CircleBorder(),
                    color: Colors.transparent,
                    child: Ink.image(
                      image: icon1Image,
                      fit: BoxFit.none,
                      width: 80,
                      height: 100,
                      child: InkWell(
                        onTap: () {},
                        child: null,
                      ),
                    ),
                  ),
                  SizedBox(width: 40.0),
                  new Material(
                    elevation: 4.0,
                    shape: CircleBorder(),
                    color: Colors.transparent,
                    child: Ink.image(
                      image: icon2Image,
                      fit: BoxFit.none,
                      width: 80,
                      height: 100,
                      child: InkWell(
                        onTap: () {},
                        child: null,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10.0),
              Row(
                children: <Widget>[
                  SizedBox(width: 40.0),
                  new Material(
                    elevation: 4.0,
                    shape: CircleBorder(),
                    color: Colors.transparent,
                    child: Ink.image(
                      image: icon3Image,
                      fit: BoxFit.none,
                      width: 80,
                      height: 100,
                      child: InkWell(
                        onTap: () {},
                        child: null,
                      ),
                    ),
                  ),
                  SizedBox(width: 40.0),
                  new Material(
                    elevation: 4.0,
                    shape: CircleBorder(),
                    color: Colors.transparent,
                    child: Ink.image(
                      image: icon4Image,
                      fit: BoxFit.none,
                      width: 80,
                      height: 100,
                      child: InkWell(
                        onTap: () {},
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
                  Navigator.of(context).push(new MaterialPageRoute(
                      builder: (context) => Categories()));
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
