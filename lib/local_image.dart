import 'package:flutter/cupertino.dart';

void main() => runApp(ImageAssetApp());

class ImageAssetApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image.asset('images/lake.jpg'),
    );
  }
}