import 'package:flutter/material.dart';

class DummyRespons extends StatefulWidget {
  final String result;

  DummyRespons({this.result });
  @override
  _DummyResponsState createState() => _DummyResponsState();
}

class _DummyResponsState extends State<DummyRespons> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Hasil Tflite')),
      body: Container(
        child: Text(widget.result),
      ),
    );
  }
}