import 'package:flutter/material.dart';

void main() {
  runApp(JumpCallBack());
}

class JumpCallBack extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return FirstPage();
  }
}

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('获取电话'),
        centerTitle: true,
      ),
      body: Center(
        child: RouteButton(),
      ),
    );
  }
}

class RouteButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: () => _navigateToMobile(context),
      child: Text('去获取'),
    );
  }
}

_navigateToMobile(BuildContext context) async {
  final result = await Navigator.push(
      context, MaterialPageRoute(builder: (context) => SecondPage()));

  //类似toast
  Scaffold.of(context).showSnackBar(SnackBar(
    content: Text('$result'),
  ));
}

class SecondPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('电话在这'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            RaisedButton(
              child: Text('休闲号码'),
              onPressed: (){
                Navigator.pop(context,'休闲号:13658645759');
              },
            ),
            RaisedButton(
              child: Text('工作号码'),
              onPressed: (){
                Navigator.pop(context,'工作号:13699998888');
              },
            ),
          ],
        ),
      ),
    );
  }
}
