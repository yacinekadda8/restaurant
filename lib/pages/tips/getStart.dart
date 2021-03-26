import 'package:flutter/material.dart';
import 'package:restaurant/config.dart';
import 'package:restaurant/pages/tips/tips.dart';

class GetStart extends StatefulWidget {
  @override
  _GetStartState createState() => _GetStartState();
}

class _GetStartState extends State<GetStart> {
  @override
  Widget build(BuildContext context) {
    double myHeight = MediaQuery.of(context).size.height / 3;
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Container(
              height: myHeight * 2,
              decoration: BoxDecoration(
                color: whiteColor,
                image: DecorationImage(
                    image: AssetImage("images/tip0.png"), fit: BoxFit.contain),
              ),
            ),
            Container(
              padding: EdgeInsets.only(right: 15.0, top: 5.0),
              height: myHeight,
              decoration: BoxDecoration(
                  color: primeryColor,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 3))
                  ],
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15))),
              child: ListView(
                children: [
                  Column(
                    textDirection: TextDirection.rtl,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                        child: Text(
                          "اجمل الأكلات",
                          textAlign: TextAlign.right,
                          style: TextStyle(
                              fontSize: 28.0,
                              color: whiteColor,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 10.0, left: 8.0, right: 8.0),
                        child: Text(
                          "أشهى المأكولات تجدونها في مطعمنا وقائمة طعام غنية \n بالوجبات مع افضل الأسعار عالميا",
                          textAlign: TextAlign.right,
                          style: TextStyle(
                            fontSize: 18.0,
                            color: whiteColor,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 14.0, left: 8.0, right: 8.0),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return Tips();
                            }));
                          },
                          child: Container(
                              padding: EdgeInsets.only(
                                  left: 40.0,
                                  right: 40.0,
                                  top: 5.0,
                                  bottom: 5.0),
                              decoration: BoxDecoration(
                                  color: whiteColor,
                                  borderRadius: BorderRadius.circular(25.0)),
                              child: Text(
                                "ابدالأن",
                                style: TextStyle(
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.bold),
                              )),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
