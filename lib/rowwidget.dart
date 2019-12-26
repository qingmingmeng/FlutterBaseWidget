import 'package:flutter/material.dart';

void main() => runApp(RowApp());

class RowApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('RowWidget'),
        centerTitle: true,
      ),
      body: Row(
        children: <Widget>[
          Expanded(
            child: RaisedButton(
              onPressed: () {},
              color: Colors.redAccent,
              child: Text('Red Button'),
            ),
          ),
          Expanded(
            flex: 2,
            child: RaisedButton(
              onPressed: () {},
              color: Colors.orangeAccent,
              child: Text('Orange Button'),
            ),
          ),
          Expanded(
            child: RaisedButton(
              onPressed: () {},
              color: Colors.blueAccent,
              child: Text('Blue Button'),
            ),
          ),
        ],
      ),
    );
  }
}
