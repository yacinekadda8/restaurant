import 'package:flutter/material.dart';
import 'package:restaurant/config.dart';
import 'package:restaurant/pages/product/product_detail.dart';

class Product extends StatefulWidget {
  @override
  _ProductState createState() => _ProductState();
}

class _ProductState extends State<Product> {
  List<Map<String, String>> myArr_product = [
    {
      "pro_id": "1",
      "pro_name": "product1",
      "pro_desc": "desc1 desc1 desc1 desc1",
      "pro_image": "images/product/pro1.jpg",
      "pro_offer": "1"
    },
    {
      "pro_id": "2",
      "pro_name": "product2",
      "pro_desc": "desc1 desc1 desc1 desc1",
      "pro_image": "images/product/pro2.jpg",
      "pro_offer": "0"
    },
    {
      "pro_id": "3",
      "pro_name": "product3",
      "pro_desc": "desc1 desc1 desc1 desc1",
      "pro_image": "images/product/pro3.jpg",
      "pro_offer": "1"
    },
    {
      "pro_id": "3",
      "pro_name": "product3",
      "pro_desc": "desc1 desc1 desc1 desc1",
      "pro_image": "images/product/pro3.jpg",
      "pro_offer": "0"
    },
    {
      "pro_id": "3",
      "pro_name": "product3",
      "pro_desc": "desc1 desc1 desc1 desc1",
      "pro_image": "images/product/pro3.jpg",
      "pro_offer": "1"
    },
    {
      "pro_id": "3",
      "pro_name": "product3",
      "pro_desc": "desc1 desc1 desc1 desc1",
      "pro_image": "images/product/pro3.jpg",
      "pro_offer": "0"
    },
    {
      "pro_id": "3",
      "pro_name": "product3",
      "pro_desc": "desc1 desc1 desc1 desc1",
      "pro_image": "images/product/pro3.jpg",
      "pro_offer": "1"
    },
    {
      "pro_id": "3",
      "pro_name": "product3",
      "pro_desc": "desc1 desc1 desc1 desc1",
      "pro_image": "images/product/pro3.jpg",
      "pro_offer": "0"
    },
    {
      "pro_id": "3",
      "pro_name": "product3",
      "pro_desc": "desc1 desc1 desc1 desc1",
      "pro_image": "images/product/pro3.jpg",
      "pro_offer": "1"
    },

  ];

  @override
  Widget build(BuildContext context) {
    return Container(child:
      Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("سمك مشوي",style: TextStyle(color: Colors.black),),
          backgroundColor: Colors.white,
          elevation: 0.0,
          leading: IconButton(icon: Icon(Icons.arrow_back_ios,color: Colors.black),onPressed: (){
            Navigator.pop(context);
          },),
        ),
        body: Container(
          child: ListView.builder(itemCount: myArr_product.length,
              itemBuilder: (BuildContext context,int index){
            return SingleProduct(
              pro_desc: myArr_product[index]["pro_desc"],
              pro_name: myArr_product[index]["pro_name"],
              pro_image: myArr_product[index]["pro_image"],
              pro_id: myArr_product[index]["pro_id"],
              pro_offer: myArr_product[index]["pro_offer"],
            );
          }),
        ),
      )
    );
  }
}
class SingleProduct extends StatelessWidget {
  final String pro_id;
  final String pro_name;
  final String pro_desc;
  final String pro_image;
  final String pro_offer;

  const SingleProduct(
      {this.pro_id, this.pro_name, this.pro_desc, this.pro_image,this.pro_offer});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => ProductDetail()));
      },
      child: Container(
        margin: EdgeInsets.only(left:10.0,right: 10.0,top: 10.0),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
          color: Colors.grey[200],
        ),

        child: Container(
          padding: EdgeInsets.all(5.0),
          child: Row(
            children: [
              Container(
                height: MediaQuery.of(context).size.height / 6,
                width: MediaQuery.of(context).size.width / 3,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  image: DecorationImage(
                      fit:BoxFit.cover,
                      image: AssetImage(pro_image))
                ),
              ),
              Expanded(
                child: Container(
                  height: MediaQuery.of(context).size.height / 6,
                  padding: EdgeInsets.symmetric(horizontal: 10.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(pro_name,style: TextStyle(
                          fontSize: 20.0,fontWeight: FontWeight.bold)
                      ),
                      RichText(
                        overflow: TextOverflow.clip,
                        text: TextSpan(children: [
                        TextSpan(
                            text: pro_desc,
                            style: TextStyle(fontSize: 16.0,color: Colors.grey))
                      ]),),
                    ],
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(10.0),
                height: MediaQuery.of(context).size.height / 6,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Icon(Icons.favorite_border),
                    checkOffer(pro_offer)
                  ],
                ),
              )
            ],
          ),
        ),
        ),
    );
  }
  Widget checkOffer(String pro_offer){
    return pro_offer == "1"
        ? Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            color: Colors.red
        ),
        child: Padding(
          padding: const EdgeInsets.all(2.0),
          child: Text("تخفيظ ",style: TextStyle(color: Colors.white),),
        ))
        : Text("");
  }
}
