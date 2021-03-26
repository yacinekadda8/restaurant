import 'package:flutter/material.dart';
import 'package:restaurant/config.dart';
import 'package:restaurant/pages/product/product.dart';

class SubCategory extends StatefulWidget {
  final String cat_id;
  final String cat_name;

  const SubCategory({this.cat_id, this.cat_name});

  @override
  _SubCategoryState createState() => _SubCategoryState();
}

class _SubCategoryState extends State<SubCategory> {
  List<Map<String, String>> myArr_category = [
    {
      "sub_id": "1",
      "sub_name": "cat1",
      "sub_image": "images/category/cat1.png",
      "sub_count": "5"
    },
    {
      "sub_id": "2",
      "sub_name": "cat2",
      "sub_image": "images/category/cat2.png",
      "sub_count": "5"
    },
    {
      "sub_id": "3",
      "sub_name": "cat3",
      "sub_image": "images/category/cat3.png",
      "sub_count": "1"
    },
    {
      "sub_id": "4",
      "sub_name": "cat4",
      "sub_image": "images/category/cat4.png",
      "sub_count": "3"
    },
    {
      "sub_id": "5",
      "sub_name": "cat5",
      "sub_image": "images/category/cat5.png",
      "sub_count": "8"
    },
    {
      "sub_id": "6",
      "sub_name": "cat6",
      "sub_image": "images/category/cat6.png",
      "sub_count": "5"
    },
    {
      "sub_id": "7",
      "sub_name": "cat7",
      "sub_image": "images/category/cat7.png",
      "sub_count": "4"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primeryColor,
        title: Text(
          widget.cat_name,
          style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        leading: InkWell(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: Icon(Icons.arrow_back_ios)),
      ),
      body: Container(
        margin: EdgeInsets.only(top: 10.0),
        child: ListView.builder(
            itemCount: myArr_category.length,
            itemBuilder: (BuildContext context, int index) {
              return SingleSubCategory(
                sub_id: myArr_category[index]["sub_id"],
                sub_image: myArr_category[index]["sub_image"],
                sub_name: myArr_category[index]["sub_name"],
                sub_count: myArr_category[index]["sub_count"],
              );
            }),
      ),
    );
  }
}

class SingleSubCategory extends StatelessWidget {
  final String sub_id;
  final String sub_name;
  final String sub_image;
  final String sub_count;

  const SingleSubCategory({this.sub_id, this.sub_name, this.sub_image,this.sub_count});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 25.0),
      padding: EdgeInsets.only(top: 20.0, left: 10.0),
      child: Column(
        children: [
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Product()));
            },
            child: ListTile(
              leading: Container(
                padding: EdgeInsets.all(15.0),
                margin: EdgeInsets.only(bottom: 5.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50.0),
                    color: primeryColor.withOpacity(.09)),
                child: Image.asset(sub_image),
              ),
              title: Text(
                sub_name,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                textAlign: TextAlign.right,
              ),
              trailing: Icon(Icons.arrow_forward_ios),
              subtitle: Text(sub_count),
            ),
          ),
          Divider(),
        ],
      ),
    );
  }
}
