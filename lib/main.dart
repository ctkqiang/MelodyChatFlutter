import 'package:flutter/material.dart';
import 'package:camera/camera.dart';

// http://quabr.com:8182/59396462/implement-a-java-local-library-to-flutter-plugin-template
final _form = GlobalKey<FormState>();
// final textOne = GlobalKey<TextBox>();

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Melody Application',
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Colors.black,
        accentColor: Colors.black,
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
        title: Text('Melody Chat'),
        actions: <Widget>[
          Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: GestureDetector(
                onTap: () {
                  print("Camera");
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ThirdRoute()));
                },
                child: Icon(Icons.camera),
              ))
        ],
      ),
      body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Form(
          key: _form,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              TextFormField(
                decoration: const InputDecoration(
                  hintText: "Enter Your Email",
                ),
                validator: (value) {
                  if (value.isEmpty || !(value.contains("John"))) {
                    return "Please Enter A Valid Email";
                  } else if (value.contains("Admin") ||
                      value.contains("admin")) {
                    print("Some Idiot Trying to Access");
                    return "Hacker Not Welcome Here.";
                  } else {
                    return null;
                  }
                },
              ),
              TextFormField(
                decoration: const InputDecoration(
                  hintText: "Enter Your Password",
                ),
                validator: (value) {
                  if (value.isEmpty || !(value.contains("Testing123"))) {
                    return "Please Enter A Valid Password";
                  }
                  return null;
                },
              ),
              Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child: RaisedButton(
                    color: Colors.blue,
                    highlightColor: Colors.cyan,
                    onPressed: () {
                      if (_form.currentState.validate()) {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => ThirdRoute()));
                      }
                    },
                    child: Text("Login"),
                  ))
            ],
          ),
        )
      ]),
    );
  }
}

// Second Screen
class SecondRoute extends StatelessWidget {
  // Navigator.push(context, MaterialPageRoute(builder: (context) => SecondRoute()));
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Melody Chat"),
      ),
    );
  }
}

class ThirdRoute extends StatefulWidget {
  final CameraDescription camera;

  const ThirdRoute({
    Key key,
    @required this.camera,
  }) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return null;
  }
}
