import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:restaurant/config.dart';
import 'package:restaurant/pages/shopping/shopping.dart';

class ProductDetail extends StatefulWidget {
  @override
  _ProductDetailState createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {
  headerBuild() {
    return Container(
      padding: EdgeInsets.all(15.0),
      child: Row(children: [
        //=============== BACK ARROW ============
        Container(
          decoration: BoxDecoration(
              color: whiteColor,
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
            icon: Icon(Icons.arrow_back_ios_rounded, color: primeryColor),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ),
        Expanded(child: Text('')),
        //=============== SHOPING CART ============
        Container(
          decoration: BoxDecoration(
              color: whiteColor,
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
            icon: Icon(Icons.shopping_cart, color: primeryColor),
            onPressed: () {},
          ),
        ),
      ]),
    );
  }

  imageProduct() {
    return Container(
      padding: EdgeInsets.all(0.0),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(50.0),
              bottomRight: Radius.circular(50.0))),
      child: Column(
        children: [
          Image.asset("images/product/pro1.jpg"),

          // ==================== Arrow & cart was here ===============

          // ==================== minus & add ===============
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0, top: 8.0),
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              //=============== Minus Icon ============
              Container(
                padding: EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                    color: primeryColor,
                    borderRadius: BorderRadius.circular(8.0)),
                child: GestureDetector(
                  onTap: () {},
                  child: FaIcon(FontAwesomeIcons.minus,
                      color: Colors.white, size: 14.0),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10.0, left: 10.0),
                child: Text('1',
                    style: TextStyle(color: Colors.black, fontSize: 30.0)),
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
                      color: Colors.white, size: 14.0),
                ),
              ),
            ]),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: Stack(
          children: [
            ListView(
              children: [
                imageProduct(),
                Container(
                  padding: EdgeInsets.only(top: 5.0, right: 25.0, left: 25.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "سمك مشوي",
                        style: TextStyle(
                            fontSize: 35.0, fontWeight: FontWeight.bold),
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.star,
                            size: 30.0,
                            color: Colors.amber,
                          ),
                          Text(
                            "4.9",
                            style: TextStyle(fontSize: 20.0),
                          ),
                          SizedBox(
                              width: MediaQuery.of(context).size.width / 4),
                          Icon(
                            Icons.favorite,
                            size: 30.0,
                            color: primeryColor,
                          ),
                          Text(
                            " 5 ",
                            style: TextStyle(fontSize: 20.0),
                          ),
                        ],
                      ),
                      Text(
                          "هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها. ولذلك يتم استخدام طريقة لوريم إيبسوم لأنها تعطي توزيعاَ طبيعياَ -إلى حد ما- للأحرف عوضاً عن استخدام هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها. ولذلك يتم استخدام طريقة لوريم إيبسوم لأنها تعطي توزيعاَ طبيعياَ -إلى حد ما- للأحرف عوضاً عن استخدام",
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey,
                          ),
                          textAlign: TextAlign.start),
                    ],
                  ),
                )
              ],
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
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Text(
                  "790 DA",
                  style: TextStyle(color: Colors.white, fontSize: 40.0),
                ),
              ),
              Expanded(child: Text("")),
              Padding(
                padding: const EdgeInsets.only(right: 20.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white.withOpacity(.3),
                      borderRadius: BorderRadius.circular(50.0)),
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 25.0, top: 5.0, bottom: 5.0),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Shopping()));
                      },
                      child: Row(
                        children: [
                          Icon(Icons.shopping_cart),
                          Text(
                            "أضف الى سلتك",
                            style:
                                TextStyle(color: Colors.black, fontSize: 20.0),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
          height: MediaQuery.of(context).size.height / 8.0,
          decoration: BoxDecoration(
              color: primeryColor.withOpacity(.8),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey[100],
                  spreadRadius: 1.0,
                  blurRadius: 1.0,
                  offset: Offset(0, 1.0),
                )
              ],
              borderRadius: BorderRadius.circular(50.0)),
        ),
      ),
    );
  }
}
