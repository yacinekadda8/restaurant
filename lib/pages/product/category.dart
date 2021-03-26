import 'package:flutter/material.dart';
import 'package:restaurant/config.dart';
import 'package:restaurant/pages/product/subcategory.dart';

class Category extends StatefulWidget {
  @override
  _CategoryState createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  List<Map<String, String>> myArr_category = [
    {
      "cat_id": "1",
      "cat_name": "اسماك",
      "cat_image": "images/category/cat1.png"
    },
    {
      "cat_id": "2",
      "cat_name": "لحوم",
      "cat_image": "images/category/cat2.png"
    },
    {
      "cat_id": "3",
      "cat_name": "خضر",
      "cat_image": "images/category/cat3.png"
    },
    {
      "cat_id": "4",
      "cat_name": "فواكه",
      "cat_image": "images/category/cat4.png"
    },
    {
      "cat_id": "5",
      "cat_name": "سلطات",
      "cat_image": "images/category/cat5.png"
    },
    {
      "cat_id": "6",
      "cat_name": "مشاوي",
      "cat_image": "images/category/cat6.png"
    },
    {
      "cat_id": "7",
      "cat_name": "مرق",
      "cat_image": "images/category/cat7.png"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primeryColor,
        title: Text(
          "قائمة الأطعمة",
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
              return SingleCategory(
                cat_id: myArr_category[index]["cat_id"],
                cat_image: myArr_category[index]["cat_image"],
                cat_name: myArr_category[index]["cat_name"],
              );
            }),
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
                      builder: (context) => SubCategory(
                            cat_id: cat_id,
                            cat_name: cat_name,
                          )));
            },
            child: ListTile(
              leading: Container(
                padding: EdgeInsets.all(15.0),
                margin: EdgeInsets.only(bottom: 5.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50.0),
                    color: primeryColor.withOpacity(.09)),
                child: Image.asset(cat_image),
              ),
              title: Text(
                cat_name,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                textAlign: TextAlign.right,
              ),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
          ),
          Divider(),
        ],
      ),
    );
  }
}
