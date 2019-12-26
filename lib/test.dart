import 'package:flutter/material.dart';

void main() => runApp(GridViewApp(
//  items: List<String>.generate(1000, (i)=>'Item $i')//generate:自动生成列表
));

class GridViewApp extends StatelessWidget{
//  final List<String> items;
//  GridViewApp({Key key, @required this.items}):super(key:key);//@required标明必须要有入参items

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('LearnView'),
        centerTitle: true,
      ),
//        body: new ListView(
//          children: <Widget>[
//            new Image.network('http://newimg.jspang.com/xiaomiquan.png'),
//            new Image.network('http://newimg.jspang.com/react_blog_demo.jpg'),
//            new Image.network('http://newimg.jspang.com/next_blog.jpg'),
//            new Image.network('http://newimg.jspang.com/ReactHooks01.png'),
//          ],
//        ),
//        body: ListView.builder(
//          itemCount: items.length,
//          itemBuilder: (context,index){
//            return ListTile(
//              title: Text('${items[index]}'),
//            );
//          },
//        ),
      body: GridView(
        padding: const EdgeInsets.fromLTRB(0.0, 2.0, 0.0, 0.0),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          mainAxisSpacing: 2.0,
          crossAxisSpacing: 2.0,
          childAspectRatio: 0.7,
        ),
        children: <Widget>[
          new Image.network('http://img5.mtime.cn/mg/2019/09/18/180155.97981046_170X256X4.jpg',fit: BoxFit.cover,),
          new Image.network('http://img5.mtime.cn/mg/2019/09/23/174218.32953003_170X256X4.jpg',fit: BoxFit.cover,),
          new Image.network('http://img5.mtime.cn/mg/2019/09/18/095840.16076538_170X256X4.jpg',fit: BoxFit.cover,),
          new Image.network('http://img5.mtime.cn/mg/2019/10/22/094245.62184021_170X256X4.jpg',fit: BoxFit.cover,),
          new Image.network('http://img5.mtime.cn/mg/2019/09/18/163131.56478840_170X256X4.jpg',fit: BoxFit.cover,),
          new Image.network('http://img5.mtime.cn/mg/2019/09/26/114538.80167653_170X256X4.jpg',fit: BoxFit.cover,),
          new Image.network('http://img5.mtime.cn/mg/2019/09/29/214724.27097450_170X256X4.jpg',fit: BoxFit.cover,),
          new Image.network('http://img5.mtime.cn/mg/2019/07/24/094215.89957301_170X256X4.jpg',fit: BoxFit.cover,),
          new Image.network('http://img5.mtime.cn/mg/2019/07/31/110053.38913357_170X256X4.jpg',fit: BoxFit.cover,),
          new Image.network('http://img5.mtime.cn/mg/2018/07/13/144859.85113276_170X256X4.jpg',fit: BoxFit.cover,),
          new Image.network('http://img31.mtime.cn/mg/2014/08/25/173317.39732158_170X256X4.jpg',fit: BoxFit.cover,),
          new Image.network('http://img5.mtime.cn/mg/2017/12/28/160733.51985495_170X256X4.jpg',fit: BoxFit.cover,),
          new Image.network('http://img21.mtime.cn/mt/2010/07/20/003336.10070890_170X256X4.jpg',fit: BoxFit.cover,),
        ],
      ),
    );
  }
}

class MyList extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: <Widget>[
        Container(
          width: 180.0,
          color: Colors.lightBlue,
        ),
        Container(
          width: 180.0,
          color: Colors.amber,
        ),
        Container(
          width: 180.0,
          color: Colors.deepOrange,
        ),
        Container(
          width: 180.0,
          color: Colors.deepPurpleAccent,
        ),
      ],
    );
  }
}