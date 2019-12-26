import 'package:flutter/material.dart';

void main() => runApp(StackApp());

class StackApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    var stack = Stack(
      alignment: const FractionalOffset(0.5, 0.8),
      children: <Widget>[
        CircleAvatar(
          backgroundImage: NetworkImage('http://img5.mtime.cn/mg/2019/09/18/180155.97981046_170X256X4.jpg'),
          radius: 100.0,
        ),
        Container(
          decoration: BoxDecoration(
            color: Colors.lightBlue,
          ),
          padding: EdgeInsets.all(5.0),
          child: Text('Hello Stack Widget'),
        ),
      ],
//      children: <Widget>[
//        Align(//存在Align时，外层的Center属性失效，以Align的alignment为准，是为在屏幕中的位置
//          alignment: FractionalOffset.center,
//          child: CircleAvatar(
//            backgroundImage: NetworkImage('http://img5.mtime.cn/mg/2019/09/18/180155.97981046_170X256X4.jpg'),
//            radius: 100.0,
//          ),
//        ),
//        Align(
//          alignment: const FractionalOffset(0.5, 0.8),
//          child: Container(
//            decoration: BoxDecoration(
//              color: Colors.lightBlue,
//            ),
//            padding: EdgeInsets.all(5.0),
//            child: Text('Hello Stack Widget'),
//          ),
//        )
//      ],
    );
    return Scaffold(
      appBar: AppBar(
        title: Text('Stack Widget',),
        centerTitle: true,
      ),
      body: Center(
        child: stack,
      ),
    );
  }
}