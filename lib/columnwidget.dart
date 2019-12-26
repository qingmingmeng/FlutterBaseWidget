import 'package:flutter/material.dart';

void main() => runApp(ColumnApp());

class ColumnApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Column Widget'),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('I am 1'),
          Text('I am 2'),
          Text('I am 3'),
          Expanded(
            child: Center(
              child: Text('I am 4, http://10.164.194.115:8090/pages/viewpage.action?pageId=33530191', textAlign: TextAlign.center,),
            ),
          ),
          Text('I am 5'),
          Text('I am 6'),
        ],
      ),
    );
  }
}