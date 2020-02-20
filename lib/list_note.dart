import 'package:app_vincitrice/create_note.dart';
import 'package:flutter/material.dart';
import 'note_card.dart';

class Lista extends StatelessWidget {
  final String title;
  final String date;
  final String notes;

  const Lista({Key key, this.title, this.date, this.notes}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Visualizza le tue note'),
        ),
        body: Center(
          child: ListView(children: <Widget>[
            SizedBox(height: 15),
            NoteCard('Portare macchina meccanico', '20/02/2020',
                'Sostituzione cinghia e controllo olio motore', ''),
            SizedBox(height: 15),
            NoteCard('Portare cane veterinario', '23/05/2020',
                'Controllo periodico salute ', ''),
            SizedBox(height: 15),
            NoteCard('Portare cane veterinario', '23/05/2020',
                'Controllo periodico salute ', ''),
            SizedBox(height: 15),
            if (title != null && date != null && notes != null)
              NoteCard(title, date, notes, ''),
          ]),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) {
                  return Note();
                },
              ),
            );
          },
          tooltip: 'Increment',
          child: Icon(
            Icons.add,
            size: 40.0,
          ),
        ));
  }
}
