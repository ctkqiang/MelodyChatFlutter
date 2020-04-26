import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Demo Application [Flutter]',
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Colors.black,
        accentColor:  Colors.black,
      ),
      home: MainScreen(),
    );
  }
}


class MainScreen extends StatelessWidget {
  @override
   Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Demo Application [Flutter]'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:[
            RaisedButton(
              highlightColor: Colors.grey,
              color: Colors.black,
              textColor: Colors.white,
              onPressed: () {
                print("hahaha");
                print(1+1);
              },
              child:Text("Testing"),
              ),

            RaisedButton(
              highlightColor: Colors.cyan,
              color: Colors.blue,
              textColor: Colors.white,
              onPressed: () {
                print("Launching Second Activity");
                Navigator.push(context, MaterialPageRoute(builder: (context) => SecondRoute()),
                );
              },
              child: Text("Click Here To Enter Second Activity"),
            )
          ]
        ),
    );
  }


}

// Second Screen
class SecondRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Melody Chat"),
      ),
    );
  }
}