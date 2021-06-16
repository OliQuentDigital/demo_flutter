import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text('mon titre de onglet'),
      ),





      bottomNavigationBar: BottomAppBar(
        color: Colors.indigoAccent,
        child: Container(height: 50.0),
        shape: const CircularNotchedRectangle(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => null,
        tooltip: 'test de float',
        child: const Icon(Icons.wb_sunny_outlined),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    ),
  ));
}
