import 'package:flutter/material.dart';
import 'package:restaurant/config.dart';
import 'package:timeline_tile/timeline_tile.dart';

class Tracking extends StatefulWidget {
  @override
  _TrackingState createState() => _TrackingState();
}

class _TrackingState extends State<Tracking> {
  Widget getDiliveryInfo() {
    return Container(
      margin: EdgeInsets.all(10.0),
      width: MediaQuery.of(context).size.width,
      child: ListTile(
        title: Text("سائقك",
            style: TextStyle(
              fontSize: 14.0,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.right),
        subtitle: Text("مراحي ياسين",
            style: TextStyle(
                color: Colors.black,
                fontSize: 20.0,
                fontWeight: FontWeight.bold),
            textAlign: TextAlign.right),
        leading: Container(
          width: MediaQuery.of(context).size.width / 6,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("images/product/pro3.jpg"))),
        ),
        trailing: Container(
          width: MediaQuery.of(context).size.width / 4,
          alignment: Alignment.centerRight,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "4.0",
                    style: TextStyle(color: primeryColor),
                    textAlign: TextAlign.right,
                  ),
                  Icon(
                    Icons.star_border,
                    color: primeryColor,
                  ),
                ],
              ),
              Text("(تقييم105)", textAlign: TextAlign.right)
            ],
          ),
        ),
      ),
    );
  }

  Widget getTimeLine() {
    double tLheight = MediaQuery.of(context).size.height / 10;
    return Container(
      color: Colors.grey[100],
      child: Column(
        children: [
          Container(
            height: tLheight,
            child: TimelineTile(
              indicatorStyle: IndicatorStyle(height: 1.0),
              lineXY: 0.2,
              alignment: TimelineAlign.manual,
              endChild: Container(
                padding: EdgeInsets.all(10.0),
                child: Text(
                  "تأكيد الطلبية",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
          Container(
            height: tLheight,
            child: TimelineTile(
              indicatorStyle: IndicatorStyle(height: 1.0),
              lineXY: 0.2,
              alignment: TimelineAlign.manual,
              endChild: Container(
                padding: EdgeInsets.all(10.0),
                child: Text(
                  "تجهيز الطلبية",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
          Container(
            height: tLheight,
            child: TimelineTile(
              indicatorStyle: IndicatorStyle(height: 1.0),
              lineXY: 0.2,
              alignment: TimelineAlign.manual,
              endChild: Container(
                padding: EdgeInsets.all(10.0),
                child: Text(
                  "الطلبية جاهزة في المطعم",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
          Container(
            height: tLheight,
            child: TimelineTile(
              indicatorStyle: IndicatorStyle(height: 1.0),
              lineXY: 0.2,
              alignment: TimelineAlign.manual,
              endChild: Container(
                padding: EdgeInsets.all(10.0),
                child: Text(
                  "الدلفري يأخد في طلبيتك الأن",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
          Container(
            height: tLheight,
            child: TimelineTile(
              indicatorStyle: IndicatorStyle(height: 1.0),
              lineXY: 0.2,
              alignment: TimelineAlign.manual,
              endChild: Container(
                padding: EdgeInsets.all(10.0),
                child: Text(
                  "الدلفري بجانبك الأن",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "تتبع وجبتك",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
          backgroundColor: Colors.white,
          elevation: 0.0,
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios, color: Colors.black),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          actions: [
            InkWell(
              onTap: () => Navigator.pop(context),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text(
                      "محادثة",
                      style: TextStyle(color: primeryColor),
                    ),
                    Icon(Icons.message, color: primeryColor),
                  ],
                ),
              ),
            )
          ],
        ),
        body: ListView(
          children: [
            Padding(padding: EdgeInsets.only(top: 20.0)),
            Text(
              "الوقت المقدر لوصول الطلبية",
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            Text(
              "05:55PM",
              style: TextStyle(
                  fontSize: 40.0,
                  fontWeight: FontWeight.bold,
                  color: primeryColor),
              textAlign: TextAlign.center,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Divider(color: Colors.grey),
            ),
            getDiliveryInfo(),
            getTimeLine()
          ],
        ),
        bottomNavigationBar: Container(
          padding: EdgeInsets.only(left: 10.0, right: 10.0, top: 20.0),
          child: MaterialButton(
            onPressed: () {},
            child: Container(
              margin: EdgeInsets.only(left: 20.0, right: 20.0, bottom: 20.0),
              width: MediaQuery.of(context).size.width,
              child: Padding(
                padding: const EdgeInsets.all(4.0),
                child: Text(
                  "الغاء الطلبية",
                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
              ),
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(20.0),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
