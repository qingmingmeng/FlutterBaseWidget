import 'package:flutter/material.dart';
import 'package:flutter_app/bean/AddressBean.dart';

void main() {
  var list = List<AddressBean>();
  for (var i = 0 ; i < 20 ; i++){
    var addr = new AddressBean();
    addr.addr = '山东省青岛市崂山区$i';
    addr.mobile = '李$i:13658674859';
    list.add(addr);
  }
  runApp(CardApp(datas: list,));
}

class CardApp extends StatelessWidget {
  final List<AddressBean> datas;
  CardApp({Key key,@required this.datas}):super(key:key);
//  var cardList = ListView(
//    children: <Widget>[
//      Card(
//        child: ListTile(
//          title: Text(
//            '山东省青岛市崂山区', style: TextStyle(fontWeight: FontWeight.w500),),
//          subtitle: Text('张三:13652567895'),
//          leading: Icon(Icons.account_box, color: Colors.lightBlue,),
//        ),
//      ),
//      Card(
//        child: ListTile(
//          title: Text(
//            '山东省泰安市宁阳县', style: TextStyle(fontWeight: FontWeight.w500),),
//          subtitle: Text('李四:13932548971'),
//          leading: Icon(Icons.account_box, color: Colors.lightBlue,),
//        ),
//      ),
//      Card(
//        child: ListTile(
//          title: Text(
//            '山东省济南市高新区', style: TextStyle(fontWeight: FontWeight.w500),),
//          subtitle: Text('王五:13877541288'),
//          leading: Icon(Icons.account_box, color: Colors.lightBlue,),
//        ),
//      ),
//    ],
//  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Card Widget',),
        centerTitle: true,
      ),
      body: Container(
//          child: cardList,
        child: ListView.builder(
          itemCount: datas.length,
          itemBuilder: (context, index){
            return Card(
              child: ListTile(
                title: Text(datas[index].addr),
                subtitle: Text(datas[index].mobile),
                leading: Icon(Icons.location_on, color: Colors.lightBlue,),
              ),
            );
          },
        ),
      ),
    );
  }
}
