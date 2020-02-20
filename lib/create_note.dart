import 'package:flutter/material.dart';
import 'list_note.dart';

class Note extends StatefulWidget {
  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<Note> {
  String titolo = "";
  String data = "";
  String note = "";

  TextEditingController titolocont = new TextEditingController();
  TextEditingController datacont = new TextEditingController();
  TextEditingController notecont = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        title: Text('Aggiungi una nuova nota'),
      ),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                  padding: EdgeInsets.all(16.0),
                  child: TextFormField(
                    controller: titolocont,
                    decoration: InputDecoration(
                      labelText: "Titolo nota",
                      fillColor: Colors.white,
                      border: new OutlineInputBorder(
                        borderRadius: new BorderRadius.circular(25.0),
                        borderSide: new BorderSide(),
                      ),
                    ),
                  )),
              Container(
                  padding: EdgeInsets.all(16.0),
                  child: TextFormField(
                    controller: datacont,
                    decoration: InputDecoration(
                      labelText: "Data nota",
                      fillColor: Colors.white,
                      border: new OutlineInputBorder(
                        borderRadius: new BorderRadius.circular(25.0),
                        borderSide: new BorderSide(),
                      ),
                    ),
                  )),
              Container(
                  padding: EdgeInsets.all(16.0),
                  child: TextFormField(
                    controller: notecont,
                    decoration: InputDecoration(
                      labelText: "Nota",
                      fillColor: Colors.white,
                      border: new OutlineInputBorder(
                        borderRadius: new BorderRadius.circular(25.0),
                        borderSide: new BorderSide(),
                      ),
                    ),
                  )),
              SizedBox(height: 10),
              ButtonTheme(
                minWidth: 200.0,
                height: 50.0,
                child: RaisedButton(
                  shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(30.0),
                      side: BorderSide(color: Colors.red)),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Lista(
                            title: titolocont.text,
                            date: datacont.text,
                            notes: notecont.text,
                          ),
                        ));
                  },
                  color: Colors.red,
                  textColor: Colors.white,
                  child: Text('Aggiungi', style: TextStyle(fontSize: 14)),
                ),
              ),
            ]),
      ),
    );
  }
}
// nome, data, note, colore
