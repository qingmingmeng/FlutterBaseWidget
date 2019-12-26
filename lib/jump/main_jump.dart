import 'package:flutter/material.dart';

void main() {
  runApp(NormalJumpApp());
}

class NormalJumpApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return FirstScreen();
  }
}

class FirstScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('导航页面',),
        centerTitle: true,
      ),
      body: Center(
        child: RaisedButton(
          child: Text('查看商品详情页'),
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(
              builder: (context) => new SecondScreen()
            ));
          },
        ),
      ),
    );
  }
}

class SecondScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('商品详情页',style: TextStyle(color: Colors.white),),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.keyboard_backspace),
          color: Colors.white,
          onPressed: () => Navigator.pop(context),
        )
      ),
      body: Center(
        child: RaisedButton(
          child: Text('返回'),
          onPressed: (){
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}