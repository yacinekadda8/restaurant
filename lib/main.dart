import 'package:flutter/material.dart';
import 'package:restaurant/config.dart';
import 'package:restaurant/pages/tips/getStart.dart';
import 'package:splashscreen/splashscreen.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Splach(),
  ));
}

class Splach extends StatefulWidget {
  @override
  _SplachState createState() => _SplachState();
}

class _SplachState extends State<Splach> {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 4,
      navigateAfterSeconds: new GetStart(),
      title: new Text(
        'مرحبا بكم في تطبيق مطعمنا',
        style: new TextStyle(
            fontWeight: FontWeight.bold, fontSize: 20.0, color: whiteColor),
      ),
      image: new Image.network(
          'https://flutter.io/images/catalog-widget-placeholder.png'),
      backgroundColor: primeryColor,
      loaderColor: whiteColor,
      photoSize: 100.0,
    );
  }
}
