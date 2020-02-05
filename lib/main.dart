import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {


  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final Dbrf= FirebaseDatabase.instance.reference();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(onPressed: (){WriteData();},child: Text('set'),),
            RaisedButton(onPressed: (){ReadData();},child: Text('read'),),
            RaisedButton(onPressed: (){UpdateData();},child: Text('Update'),),
            RaisedButton(onPressed: (){DeleteData();},child: Text('Delete'),),

          ],
        ),
      )
    );

  }
  void WriteData(){

    Dbrf.child("1").set({
      'id':'id1',
      'data':'This is a data'
    });
  }
  void ReadData(){
    Dbrf.once().then((DataSnapshot datasnapshot){
      print(datasnapshot.value);

    });
  }

  void UpdateData(){
    Dbrf.child('1').update({
      'data':"greate afran sarkar"
    });

  }

  void DeleteData(){
    Dbrf.child('1').remove();
  }

}
