import 'package:flutter/material.dart';
import 'package:restaurant/config.dart';
import 'package:restaurant/pages/product/product_detail.dart';
import 'package:restaurant/pages/product/subcategory.dart';
import 'package:restaurant/pages/shopping/shopping.dart';

class Favorate extends StatefulWidget {
  @override
  _FavorateState createState() => _FavorateState();
}

class _FavorateState extends State<Favorate> {
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
    {
      "pro_id": "3",
      "pro_name": "product3",
      "pro_desc": "desc1 desc1 desc1 desc1",
      "pro_image": "images/product/pro3.jpg"
    },
    {
      "pro_id": "3",
      "pro_name": "product3",
      "pro_desc": "desc1 desc1 desc1 desc1",
      "pro_image": "images/product/pro3.jpg"
    },
    {
      "pro_id": "3",
      "pro_name": "product3",
      "pro_desc": "desc1 desc1 desc1 desc1",
      "pro_image": "images/product/pro3.jpg"
    },
    {
      "pro_id": "3",
      "pro_name": "product3",
      "pro_desc": "desc1 desc1 desc1 desc1",
      "pro_image": "images/product/pro3.jpg"
    },
    {
      "pro_id": "3",
      "pro_name": "product3",
      "pro_desc": "desc1 desc1 desc1 desc1",
      "pro_image": "images/product/pro3.jpg"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "المؤكولات المفضلة",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.grey[200],
        elevation: 0.0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Container(
        padding: EdgeInsets.only(left: 5.0, right: 5.0),
        color: Colors.grey[200],
        child: GridView.builder(
            itemCount: myArr_product.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, childAspectRatio: 0.9),
            itemBuilder: (BuildContext context, int index) {
              return SingleProduct(
                pro_id: myArr_product[index]["pro_id"],
                pro_name: myArr_product[index]["pro_name"],
                pro_image: myArr_product[index]["pro_image"],
                pro_desc: myArr_product[index]["pro_desc"],
              );
            }),
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
        margin: EdgeInsets.all(5.0),
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(10.0)),
        width: MediaQuery.of(context).size.width / 2,
        height: MediaQuery.of(context).size.height / 2,
        padding: EdgeInsets.only(bottom: 5.0, top: 5.0, right: 5.0, left: 5.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              alignment: Alignment.centerRight,
              child: Icon(
                Icons.favorite_border,
                color: primeryColor,
              ),
            ),
            Center(
              child: Container(
                width: MediaQuery.of(context).size.width / 4,
                height: MediaQuery.of(context).size.height / 8,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    image: DecorationImage(
                        fit: BoxFit.cover, image: AssetImage(pro_image))),
                child: Text(""),
              ),
            ),
            Expanded(child: Text("")),
            Text(
              pro_name,
              style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                  color: blackColor),
            ),
            Row(
              children: [
                Text(pro_id),
                Expanded(child: Text("")),
                Icon(
                  Icons.star_border,
                  color: Colors.yellow,
                ),
                Text(pro_id),
              ],
            )
          ],
        ),
      ),
    );
  }
}
