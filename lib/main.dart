import 'package:flutter/material.dart';
import 'package:flutter_app/add.dart';
import 'package:flutter_app/card_widget.dart';
import 'package:flutter_app/columnwidget.dart';
import 'package:flutter_app/jump/jump_call_back.dart';
import 'package:flutter_app/jump/list_jump.dart';
import 'package:flutter_app/jump/main_jump.dart';
import 'package:flutter_app/local_image.dart';
import 'package:flutter_app/positioned_widget.dart';
import 'package:flutter_app/rowwidget.dart';
import 'package:flutter_app/stackwidget.dart';
import 'package:flutter_app/test.dart';

import 'bean/AddressBean.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Namer',
      home: Home(),
    );
  }
}

class Home extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text('flutter基础控件'),
        centerTitle: true,
      ),
      body: ListView(
        children: <Widget>[
          Card(
            child: ListTile(
              title: Text('水平布局(Row)'),
              leading: Icon(Icons.location_on,color: Colors.lightBlue,),
              onTap: () => _jumpToCorrespondPage(context, 'Row'),
            ),
          ),
          Card(
            child: ListTile(
              title: Text('垂直布局(Column)'),
              leading: Icon(Icons.location_on,color: Colors.lightBlue,),
              onTap: () => _jumpToCorrespondPage(context, 'Column'),
            ),
          ),
          Card(
            child: ListTile(
              title: Text('网格布局(GridView)'),
              leading: Icon(Icons.location_on,color: Colors.lightBlue,),
              onTap: () => _jumpToCorrespondPage(context, 'GridView'),
            ),
          ),
          Card(
            child: ListTile(
              title: Text('层叠布局(Stack)'),
              leading: Icon(Icons.location_on,color: Colors.lightBlue,),
              onTap: () => _jumpToCorrespondPage(context, 'Stack'),
            ),
          ),
          Card(
            child: ListTile(
              title: Text('层叠布局(Positioned)'),
              leading: Icon(Icons.location_on,color: Colors.lightBlue,),
              onTap: () => _jumpToCorrespondPage(context, 'Positioned'),
            ),
          ),
          Card(
            child: ListTile(
              title: Text('卡片布局(Card)'),
              leading: Icon(Icons.location_on,color: Colors.lightBlue,),
              onTap: () => _jumpToCorrespondPage(context, 'Card'),
            ),
          ),
          Card(
            child: ListTile(
              title: Text('展示项目中的图片(Image.asset)'),
              leading: Icon(Icons.location_on,color: Colors.lightBlue,),
              onTap: () => _jumpToCorrespondPage(context, 'Image.asset'),
            ),
          ),
          Card(
            child: ListTile(
              title: Text('展示网络图片(Image.network)'),
              leading: Icon(Icons.location_on,color: Colors.lightBlue,),
              onTap: () => _jumpToCorrespondPage(context, 'Image.network'),
            ),
          ),
          Card(
            child: ListTile(
              title: Text('普通跳转返回(不带回调信息)'),
              leading: Icon(Icons.location_on,color: Colors.lightBlue,),
              onTap: () => _jumpToCorrespondPage(context, 'NormalJump'),
            ),
          ),
          Card(
            child: ListTile(
              title: Text('列表跳转对应详情(不带回调信息)'),
              leading: Icon(Icons.location_on,color: Colors.lightBlue,),
              onTap: () => _jumpToCorrespondPage(context, 'ListJump'),
            ),
          ),
          Card(
            child: ListTile(
              title: Text('跳转+回调数据'),
              leading: Icon(Icons.location_on,color: Colors.lightBlue,),
              onTap: () => _jumpToCorrespondPage(context, 'JumpCallBack'),
            ),
          ),
        ],
      ),
    );
  }
}

//跳转对应页面的方法
_jumpToCorrespondPage(BuildContext context, String type){
  Widget jumpWidget;
  var list = List<AddressBean>();
  for (var i = 0 ; i < 20 ; i++){
    var addr = new AddressBean();
    addr.addr = '山东省青岛市崂山区$i';
    addr.mobile = '李$i:13658674859';
    list.add(addr);
  }
  switch (type){
    case 'Row': {//水平布局(Row)
      jumpWidget = RowApp();
    }
    break;

    case 'Column': {//垂直布局(Column)
      jumpWidget = ColumnApp();
    }
    break;

    case 'GridView': {//网格布局(GridView)
      jumpWidget = GridViewApp();
    }
    break;

    case 'Stack': {//层叠布局(Stack)
      jumpWidget = StackApp();
    }
    break;

    case 'Positioned': {//层叠布局(Positioned)
      jumpWidget = PositionedApp();
    }
    break;

    case 'Card': {//卡片布局(Card)
      jumpWidget = CardApp(datas: list,);
    }
    break;

    case 'Image.asset': {//展示项目中的图片(Image.asset)
      jumpWidget = ImageAssetApp();
    }
    break;

    case 'Image.network': {//展示网络图片(Image.network)
      jumpWidget = ImageNetApp();
    }
    break;

    case 'NormalJump': {//普通跳转返回(不带回调信息)
      jumpWidget = NormalJumpApp();
    }
    break;

    case 'ListJump': {//列表跳转对应详情(不带回调信息)
      jumpWidget = ListJumpApp();
    }
    break;

    case 'JumpCallBack': {//跳转+回调数据
      jumpWidget = JumpCallBack();
    }
    break;

    default: {
      Scaffold.of(context).showSnackBar(SnackBar(
        content: Text('类型对应错误'),
      ));
    }
    break;
  }
  if(null != jumpWidget){
    Navigator.push(context, MaterialPageRoute(
      builder: (context) => jumpWidget
    ));
  }
}