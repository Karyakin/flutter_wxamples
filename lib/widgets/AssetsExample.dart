import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AssetExamle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'IndieFlower'),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepPurple[800],
          title: const Center(
            child: Text('Adding Assets'),
          ),
        ),
        body: Center(
          child: Stack(
            fit: StackFit.expand,
            children: <Widget>[
              const Image(
                image: AssetImage('assets/images/bg.jpg'),
              ),
              Image.asset('assets/icons/icons8.png'),
              const Positioned(
                  top: 16,
                  left: 30,
                  child: Text(
                    'Кастомный текс',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w900,
                      color: Colors.yellowAccent,
                      // fontFamily: 'IndieFlower'
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
