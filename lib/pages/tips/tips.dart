import 'package:flutter/material.dart';
import 'package:page_indicator/page_indicator.dart';
import 'package:restaurant/config.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:restaurant/pages/account/login.dart';
import 'package:restaurant/pages/account/register.dart';
import 'package:restaurant/pages/home/home.dart';

class Tips extends StatefulWidget {
  @override
  _TipsState createState() => _TipsState();
}

class _TipsState extends State<Tips> {
  var myArr = [
    {
      "title": "ابحث عن اكلك المفضل",
      "info": "من بين افضل الوجبات في المطاعم الجزائرية",
      "image": "images/tip1.png"
    },
    {
      "title": "توصيل سريع",
      "info":
          "يصلك اكلك لأي مكان توجد فيه ان كان مزلك \n أو مكتبك او اي مكان تريد",
      "image": "images/tip2.png"
    },
    {
      "title": "تتبع موقع الأكل",
      "info": "تتبع لحظي لمكان الاكل بعد الطلب مباشرة",
      "image": "images/tip3.png"
    }
  ];
  @override
  Widget build(BuildContext context) {
    double myHeight = (MediaQuery.of(context).size.height -
            MediaQuery.of(context).padding.top) /
        6;
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Container(
              alignment: Alignment.bottomRight,
              padding: EdgeInsets.only(top: 40.0, right: 30.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return Home();
                  }));
                },
                child: Text(
                  "دخول",
                  style: TextStyle(fontSize: 22.0, color: primeryColor),
                ),
              ),
            ),
            Container(
              height: myHeight * 4,
              child: PageIndicatorContainer(
                length: myArr.length,
                align: IndicatorAlign.bottom,
                indicatorColor: Colors.grey[400],
                indicatorSelectorColor: primeryColor,
                shape: IndicatorShape.circle(),
                child: PageView.builder(
                    physics: AlwaysScrollableScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemCount: myArr.length,
                    itemBuilder: (BuildContext context, index) {
                      return SingleTips(
                          title: myArr[index]["title"],
                          info: myArr[index]["info"],
                          image: myArr[index]["image"]);
                    }),
              ),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 25.0),
                child: ListView(
                  padding: EdgeInsets.only(top: 15.0),
                  children: [
                    Column(
                      textDirection: TextDirection.rtl,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        MaterialButton(
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return Register();
                            }));
                          },
                          child: Container(
                            padding: EdgeInsets.symmetric(vertical: 5.0),
                            alignment: Alignment.topCenter,
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20.0),
                                color: primeryColor),
                            child: Text(
                              "انشاء حساب",
                              style: TextStyle(
                                  fontSize: 20.0,
                                  color: whiteColor,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        MaterialButton(
                          onPressed: () {},
                          child: Container(
                            padding: EdgeInsets.symmetric(vertical: 5.0),
                            alignment: Alignment.topCenter,
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20.0),
                                color: Colors.grey[400]),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "الاستمرار بفايسبوك",
                                  style: TextStyle(
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.bold,
                                      color: blackColor),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 5.0, bottom: 5.0),
                                  child: FaIcon(
                                    FontAwesomeIcons.facebookF,
                                    size: 16.0,
                                    color: blackColor,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SingleTips extends StatelessWidget {
  final String title;
  final String info;
  final String image;

  const SingleTips({this.title, this.info, this.image});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
            child: Container(
          alignment: Alignment.center,
          child: Image.asset(
            image,
            fit: BoxFit.cover,
          ),
        )),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            title,
            style: TextStyle(
                fontSize: 24, color: primeryColor, fontWeight: FontWeight.bold),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 70),
          child: Text(info,
              style: TextStyle(
                fontSize: 18,
                color: Colors.grey,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center),
        )
      ],
    );
  }
}
