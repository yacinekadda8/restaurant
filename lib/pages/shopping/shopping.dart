import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:restaurant/config.dart';
import 'package:restaurant/pages/order/tracking.dart';

class Shopping extends StatefulWidget {
  @override
  _ShoppingState createState() => _ShoppingState();
}

class _ShoppingState extends State<Shopping> {
  headerBuild() {
    return Container(
      padding: EdgeInsets.all(15.0),
      child: Row(children: [
        //=============== BACK ARROW ============
        Container(
          decoration: BoxDecoration(
              color: primeryColor.withOpacity(0.7),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey[100],
                  spreadRadius: 1.0,
                  blurRadius: 2.0,
                  offset: Offset(0, 1.0),
                )
              ],
              borderRadius: BorderRadius.circular(15.0)),
          child: IconButton(
            icon: Icon(Icons.arrow_back_ios_rounded, color: Colors.white),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ),
        Expanded(child: Text('')),
      ]),
    );
  }

  @override
  Widget build(BuildContext context) {
    var mypro = [
      {
        "pro_id": "1",
        "pro_name": "لحم مشوي",
        "pro_price": "100",
        "pro_image": "images/product/pro1.jpg",
        "pro_qtq": "1",
      },
      {
        "pro_id": "2",
        "pro_name": "لحم مقلي",
        "pro_price": "120",
        "pro_image": "images/product/pro2.jpg",
        "pro_qtq": "1",
      },
      {
        "pro_id": "3",
        "pro_name": "لحم نايء",
        "pro_price": "80",
        "pro_image": "images/product/pro3.jpg",
        "pro_qtq": "1",
      },
      {
        "pro_id": "4",
        "pro_name": "لحم مشوي",
        "pro_price": "180",
        "pro_image": "images/product/pro1.jpg",
        "pro_qtq": "1",
      },
      {
        "pro_id": "4",
        "pro_name": "لحم مشوي",
        "pro_price": "180",
        "pro_image": "images/product/pro1.jpg",
        "pro_qtq": "1",
      },
    ];
    void _showSheetMsg(context) {
      showModalBottomSheet(
          isScrollControlled: true,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25.0),
                  topRight: Radius.circular(25.0))),
          context: context,
          builder: (BuildContext bc) {
            return Container(
              height: MediaQuery.of(context).size.height * .7,
              child: ListView(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 30.0, bottom: 20.0),
                    child: Icon(
                      Icons.verified_outlined,
                      size: 120.0,
                      color: Colors.amber,
                    ),
                  ),
                  Text(
                    "شكر على الطلب",
                    style: TextStyle(
                        color: primeryColor,
                        fontSize: 26.0,
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0, bottom: 20.0),
                    child: Text(
                      "يمكنك تتبع وجبتك \n من قسم تتبع الطلبات",
                      style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.grey,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 35.0, bottom: 20.0),
                    child: MaterialButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Tracking()));
                      },
                      child: Container(
                          margin: EdgeInsets.only(left: 20.0, right: 20.0),
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                              color: primeryColor,
                              borderRadius: BorderRadius.circular(25.0)),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "تتبع طلبيتك",
                              style: TextStyle(
                                  fontSize: 20.0,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                              textAlign: TextAlign.center,
                            ),
                          )),
                    ),
                  ),
                  Text(
                    "اطلب اشياء اخرى",
                    style: TextStyle(
                        fontSize: 18.0,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            );
          });
    }

    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: Stack(
          children: [
            Container(
              margin: EdgeInsets.only(top: 60.0),
              child: ListView.builder(
                  itemCount: mypro.length,
                  itemBuilder: (context, index) {
                    return singleProduct(
                      pro_id: mypro[index]["pro_id"],
                      pro_name: mypro[index]["pro_name"],
                      pro_price: mypro[index]["pro_price"],
                      pro_qtq: mypro[index]["pro_qtq"],
                      pro_image: mypro[index]["pro_image"],
                    );
                  }),
            ),
            Positioned(
              top: 5.0,
              left: 0.0,
              right: 0.0,
              height: 100,
              child: headerBuild(),
            )
          ],
        ),
      ),
      bottomNavigationBar: Container(
          height: MediaQuery.of(context).size.height * .26,
          child: Column(
            children: [
              Card(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                      child: Row(
                        children: [
                          Text(
                            "1000",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 18.0),
                          ),
                          Expanded(child: Text("")),
                          Text(
                            ":مجموع",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 18.0),
                          )
                        ],
                      ),
                    ),
                    Divider(color: Colors.black),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                      child: Row(
                        children: [
                          Text(
                            "200",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 18.0),
                          ),
                          Expanded(child: Text("")),
                          Text(
                            ":ثمن توصيل",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 18.0),
                          )
                        ],
                      ),
                    ),
                    Divider(color: Colors.black),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                      child: Row(
                        children: [
                          Text(
                            "200",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 18.0),
                          ),
                          Expanded(child: Text("")),
                          Text(
                            ":الكلي",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 18.0),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 17.0, right: 17.0),
                    child: Row(
                      children: [
                        Icon(Icons.verified),
                        GestureDetector(
                          onTap: () {
                            _showSheetMsg(context);
                          },
                          child: Padding(
                            padding:
                                const EdgeInsets.only(left: 8.0, right: 8.0),
                            child: Text(
                              "تأكيد الطلب",
                              style: TextStyle(
                                  color: Colors.black, fontSize: 24.0),
                            ),
                          ),
                        ),
                      ],
                    ),
                    decoration: BoxDecoration(
                        color: primeryColor.withOpacity(.8),
                        borderRadius: BorderRadius.circular(50.0)),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 15.0, right: 15.0),
                    child: Row(
                      children: [
                        Icon(Icons.shopping_cart),
                        GestureDetector(
                          onTap: () {},
                          child: Padding(
                            padding:
                                const EdgeInsets.only(left: 8.0, right: 8.0),
                            child: Text(
                              "اضف الى السلة",
                              style: TextStyle(
                                  color: Colors.black, fontSize: 24.0),
                            ),
                          ),
                        ),
                      ],
                    ),
                    decoration: BoxDecoration(
                        color: primeryColor.withOpacity(.8),
                        borderRadius: BorderRadius.circular(50.0)),
                  ),
                ],
              ),
            ],
          )),
    );
  }
}

class singleProduct extends StatelessWidget {
  final String pro_id;
  final String pro_name;
  final String pro_price;
  final String pro_qtq;
  final String pro_image;

  const singleProduct({
    this.pro_id,
    this.pro_name,
    this.pro_price,
    this.pro_qtq,
    this.pro_image,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Container(
            alignment: Alignment.topRight,
            child: Icon(Icons.close, color: primeryColor),
          ),
          Container(
            child: ListTile(
              title: Text(
                pro_name,
                style: TextStyle(fontWeight: FontWeight.w900, fontSize: 20.0),
              ),
              subtitle: Text(
                pro_price,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17.0),
              ),
              leading: Container(
                width: 50.0,
                decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(pro_image),
                      fit: BoxFit.cover,
                    ),
                    shape: BoxShape.circle),
              ),
              trailing: Container(
                width: 90.0,
                child: Row(children: [
                  //=============== Minus Icon ============
                  Container(
                    padding: EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                        color: primeryColor,
                        borderRadius: BorderRadius.circular(8.0)),
                    child: GestureDetector(
                      onTap: () {},
                      child: FaIcon(FontAwesomeIcons.minus,
                          color: Colors.white, size: 15.0),
                    ),
                  ),
                  Expanded(
                    child: Text(
                      pro_qtq,
                      style: TextStyle(color: Colors.black, fontSize: 24.0),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  //=============== Add Icom ============
                  Container(
                    padding: EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                        color: primeryColor,
                        borderRadius: BorderRadius.circular(8.0)),
                    child: GestureDetector(
                      onTap: () {},
                      child: FaIcon(FontAwesomeIcons.plus,
                          color: Colors.white, size: 15.0),
                    ),
                  ),
                ]),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
