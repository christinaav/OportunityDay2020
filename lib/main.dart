import 'package:flutter/material.dart';
import 'package:undraw/undraw.dart';
import 'list_note.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            UnDraw(
              color: Colors.red,
              illustration: UnDrawIllustration.note_list,
              height: 200,
              width: 200,
            ),
            SizedBox(height: 60),
            MaterialButton(
              color: Colors.red,
              minWidth: 200.0,
              height: 50.0,
              child: Text(
                'Entra',
                style: TextStyle(color: Colors.white),
              ),
              onPressed: () {
                // Navigator.pushNamed(context, 'myapp');
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                      return Lista();
                    },
                  ),
                );
              },
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(30.0),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
