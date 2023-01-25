// ignore_for_file: prefer_const_constructors

import 'dart:async';

import 'package:flutter/material.dart';

class MyFirstClass extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyFirstAppSate();
  }
}

class _MyFirstAppSate extends State<MyFirstClass> {
  late bool _loading;
  late double _progressValue;

  @override
  void initState() {
    super.initState();
    _loading = false;
    _progressValue = 0.0;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.deepPurple[100],
        appBar: AppBar(
          backgroundColor: Colors.deepPurple[800],
          title: const Text(
            'FirstApp',
          ),
          centerTitle: true,
        ),
        body: Center(
          child: Container(
              child: _loading
                  ? Column(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        LinearProgressIndicator(value: _progressValue),
                        Text(
                          '${(_progressValue * 100).round()}%',
                          style: TextStyle(color: Colors.black, fontSize: 20),
                        ),
                      ],
                    )
                  : Text(
                      'Press button to download',
                      style: TextStyle(color: Colors.black, fontSize: 20),
                    )),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              _loading = !_loading;
              _UpdateProgress();
            });
          },
          child: Icon(Icons.download),
        ),
      ),
    );
  }

  void _UpdateProgress() {
    const oneSec = const Duration(seconds: 1);
    Timer.periodic(oneSec, (Timer t) {
      setState(() {
        _progressValue = _progressValue + 0.1;
        if (_progressValue.toStringAsFixed(1) == '1.0') {
          _loading = false;
          t.cancel();
          _progressValue = 0.0;
          return;
        }
      });
    });
  }
}
