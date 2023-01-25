import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AssetExamle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepPurple[800],
          title: Center(
            child: Text('Adding Assets'),
          ),
        ),
        body: Center(
          child: Stack(
            fit: StackFit.expand,
            children: <Widget>[
              Image(
                image: AssetImage('assets/images/bg.jpg'),
              ),
              Image.asset('assets/icons/icons8.png')
            ],
          ),
        ),
      ),
    );
  }
}
