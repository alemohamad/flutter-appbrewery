import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Column(
            // Column or Row
//            mainAxisSize: MainAxisSize.min,
//            verticalDirection: VerticalDirection.up,
//            verticalDirection: VerticalDirection.down,
//            mainAxisAlignment: MainAxisAlignment.center,
//            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//            mainAxisAlignment: MainAxisAlignment.spaceBetween,
//            crossAxisAlignment: CrossAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Container(
                width: 100.0,
                height: 100.0,
                color: Colors.white,
                child: Text('Container 1'),
              ),
              SizedBox(
                height: 20.0,
                // this can be used to separate elements
              ),
              Container(
                width: 100.0,
                height: 100.0,
                color: Colors.blue,
                child: Text('Container 2'),
              ),
              Container(
                width: 100.0,
                height: 100.0,
                color: Colors.red,
                child: Text('Container 3'),
              ),
//              Container(
              // to use with CrossAxisAlignment.end
//                width: double.infinity,
//              ),
            ],
          ),
        ),
      ),
    );
  }
}

// stless -> Stateless Widget snippet
