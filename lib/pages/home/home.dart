import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:restaurant/config.dart';
import 'package:restaurant/pages/drawer/mydrawer.dart';
import 'package:restaurant/pages/product/product_detail.dart';
import 'package:restaurant/pages/product/subcategory.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  GlobalKey<ScaffoldState> _keyDrawer = GlobalKey<ScaffoldState>();
  List<Map<String, String>> myArr_product = [
    {
      "pro_id": "1",
      "pro_name": "product1",
      "pro_desc": "desc1 desc1 desc1 desc1",
      "pro_image": "images/product/pro1.jpg"
    },
    {
      "pro_id": "2",
      "pro_name": "product2",
      "pro_desc": "desc1 desc1 desc1 desc1",
      "pro_image": "images/product/pro2.jpg"
    },
    {
      "pro_id": "3",
      "pro_name": "product3",
      "pro_desc": "desc1 desc1 desc1 desc1",
      "pro_image": "images/product/pro3.jpg"
    },
  ];
  List<Map<String, String>> myArr_category = [
    {
      "cat_id": "1",
      "cat_name": "cat1",
      "cat_image": "images/category/cat1.png"
    },
    {
      "cat_id": "2",
      "cat_name": "cat2",
      "cat_image": "images/category/cat2.png"
    },
    {
      "cat_id": "3",
      "cat_name": "cat3",
      "cat_image": "images/category/cat3.png"
    },
    {
      "cat_id": "4",
      "cat_name": "cat4",
      "cat_image": "images/category/cat4.png"
    },
    {
      "cat_id": "5",
      "cat_name": "cat5",
      "cat_image": "images/category/cat5.png"
    },
    {
      "cat_id": "6",
      "cat_name": "cat6",
      "cat_image": "images/category/cat6.png"
    },
    {
      "cat_id": "7",
      "cat_name": "cat7",
      "cat_image": "images/category/cat7.png"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      key: _keyDrawer,
      endDrawer: MyDrawer(),
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(right: 25.0, left: 25.0),
                child: Column(
                  children: [
                    Container(
                      alignment: Alignment.bottomRight,
                      margin: EdgeInsets.only(top: 30.0),
                      child: Text(
                        "توصيل الى",
                        style: TextStyle(
                            fontSize: 18.0,
                            color: Colors.grey,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(bottom: 20.0),
                      child: Row(
                        children: [
                          Text(
                            "الموقع الحالي",
                            style: TextStyle(
                                color: blackColor,
                                fontWeight: FontWeight.bold,
                                fontSize: 24.0),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 5.0),
                            child: GestureDetector(
                              onTap: () {},
                              child: FaIcon(
                                FontAwesomeIcons.chevronDown,
                                size: 16.0,
                                color: primeryColor,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                        child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 14.0),
                          child: GestureDetector(
                              onTap: () {
                                _keyDrawer.currentState.openEndDrawer();
                              },
                              child: Icon(
                                Icons.menu,
                                size: 40.0,
                                color: primeryColor,
                              )),
                        ),
                        Expanded(
                          child: Container(
                              child: TextFormField(
                            decoration: InputDecoration(
                              contentPadding:
                                  EdgeInsets.symmetric(vertical: 5.0),
                              hintText: "ابحث عن وجبتك",
                              prefixIcon: Icon(
                                Icons.search,
                                color: blackColor,
                              ),
                              filled: true,
                              fillColor: Colors.grey[200],
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30.0),
                                  borderSide: BorderSide.none),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30.0),
                                  borderSide: BorderSide.none),
                            ),
                          )),
                        ),
                      ],
                    ))
                  ],
                ),
              ),
              Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 4.5,
                  child: ListView.builder(
                      itemCount: myArr_category.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (BuildContext context, int index) {
                        return SingleCategory(
                          cat_id: myArr_category[index]["cat_id"],
                          cat_image: myArr_category[index]["cat_image"],
                          cat_name: myArr_category[index]["cat_name"],
                        );
                      })),
              Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 2.4,
                  child: ListView.builder(
                    itemBuilder: (BuildContext context, int index) {
                      return SingleProduct(
                        pro_id: myArr_product[index]["pro_id"],
                        pro_image: myArr_product[index]["pro_image"],
                        pro_desc: myArr_product[index]["pro_desc"],
                        pro_name: myArr_product[index]["pro_name"],
                      );
                    },
                    itemCount: myArr_product.length,
                  )),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        selectedItemColor: primeryColor,
        selectedFontSize: 18.0,
        unselectedItemColor: Colors.grey,
        showSelectedLabels: true,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "الرئيسية",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.restaurant_menu),
            label: "العروض",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "حسابي",
          ),
        ],
      ),
    );
  }
}

class SingleProduct extends StatelessWidget {
  final String pro_id;
  final String pro_name;
  final String pro_desc;
  final String pro_image;

  const SingleProduct(
      {this.pro_id, this.pro_name, this.pro_desc, this.pro_image});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => ProductDetail()));
      },
      child: Container(
        padding: EdgeInsets.only(bottom: 20.0, right: 25.0, left: 25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 3.5,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  image: DecorationImage(
                      fit: BoxFit.cover, image: AssetImage(pro_image))),
              child: Text("data"),
            ),
            Text(
              pro_name,
              style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                  color: blackColor),
            ),
            Text(
              pro_desc,
              style: TextStyle(fontSize: 18.0, color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }
}

class SingleCategory extends StatelessWidget {
  final String cat_id;
  final String cat_name;
  final String cat_image;

  const SingleCategory({this.cat_id, this.cat_name, this.cat_image});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => SubCategory(
                  cat_id: cat_id,
                  cat_name: cat_name,
                )));
      },
      child: Container(
        margin: EdgeInsets.only(right: 25.0),
        padding: EdgeInsets.only(top: 20.0, left: 10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.all(15.0),
              margin: EdgeInsets.only(bottom: 5.0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: primeryColor.withOpacity(.05)),
              child: Image.asset(cat_image),
            ),
            Text(
              cat_name,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
              textAlign: TextAlign.right,
            ),
          ],
        ),
      ),
    );
  }
}
