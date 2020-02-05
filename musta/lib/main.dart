import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Column(
            children: <Widget>[
              RaisedButton(onPressed: (){}),
              Container(
                height: 200,
                child: FlareActor("animations/NewFile.flr",
                    animation: "ee",
                    fit: BoxFit.contain,
                    alignment: Alignment.center),
              ),
              RaisedButton(onPressed: (){})
            ],
          ),
        ],

      ),
    );
  }
}
