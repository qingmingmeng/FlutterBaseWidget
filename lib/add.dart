import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() => runApp(new ImageNetApp());

class ImageNetApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('网络图片'),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
//            child: new Text('Hello widget',style: TextStyle(fontSize: 40.0),),
//            alignment: Alignment.topLeft,//Container中的子内容的对齐方式
//            width: 500.0,
//            height: 400.0,
//            //color: Colors.lightBlue,
//            padding: const EdgeInsets.fromLTRB(10.0,100.0,0.0,0.0),
//            margin: const EdgeInsets.all(10.0),
//            decoration: new BoxDecoration(
//              gradient: const LinearGradient(
//                colors: [Colors.lightBlue,Colors.greenAccent,Colors.purple]//背景
//              ),
//              border: Border.all(width: 5.0,color: Colors.red),//边框
//            ),
          child: new Image.network(
            'http://img5.mtime.cn/mg/2019/12/20/161317.29242748_285X160X4.jpg',
            repeat: ImageRepeat.repeat,//重复
            fit: BoxFit.scaleDown,
            color: Colors.greenAccent,
            colorBlendMode: BlendMode.modulate,//混合模式，叠加颜色
          ),
          width: 300.0,
          height: 200.0,
          color: Colors.lightBlue,
        ),
      ),
    );
  }
}