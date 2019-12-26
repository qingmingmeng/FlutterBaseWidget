import 'package:flutter/material.dart';

void main() => runApp(PositionedApp());

class PositionedApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    var stack = Stack(
      alignment: const FractionalOffset(0.5, 0.8),
      children: <Widget>[
        CircleAvatar(
          backgroundImage: NetworkImage('http://img5.mtime.cn/mg/2019/09/18/180155.97981046_170X256X4.jpg'),
          radius: 100.0,
        ),
        Positioned(
          top: 10.0,
          left: 10.0,
          child: Container(
            color: Colors.lightBlue,
            child: Text('Positioned Child1', style: TextStyle(color: Colors.white),),
          ),
        ),
        Positioned(
          bottom: 10.0,
          right: 10.0,
          child: Container(
            color: Colors.lightBlue,
            child: Text('Positioned Child2', style: TextStyle(color: Colors.white),),
          ),
        ),
      ],
    );
    return Scaffold(
      appBar: AppBar(
        title: Text('Positoned Widget',),
        centerTitle: true,
      ),
      body: Center(
        child: stack,
      ),
    );
  }
}