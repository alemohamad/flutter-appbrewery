import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey,
        appBar: AppBar(
          title: Text("Fatal Error"),
          backgroundColor: Colors.grey[900],
        ),
        body: Center(
          child: Image(
            image: AssetImage('images/karlsson-fatal-error.png'),
          ),
        ),
      ),
    ),
  );
}
