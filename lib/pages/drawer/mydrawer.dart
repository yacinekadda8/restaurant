import 'package:flutter/material.dart';
import 'package:restaurant/config.dart';
import 'package:restaurant/pages/account/changepassrword.dart';
import 'package:restaurant/pages/account/myprofile.dart';
import 'package:restaurant/pages/favorate/favorate.dart';
import 'package:restaurant/pages/order/tracking.dart';
import 'package:restaurant/pages/product/category.dart';

class MyDrawer extends StatefulWidget {
  @override
  _MyDrawerState createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).copyWith(dividerColor: Colors.transparent);
    return Container(
      color: greyColor,
      child: Drawer(
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: ListView(
            children: [
              UserAccountsDrawerHeader(
                accountName: Text(
                  "accountName",
                  style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.w900,
                      color: Colors.black),
                ),
                accountEmail: Text(
                  "accountEmail@gmail.com",
                  style: TextStyle(
                    fontSize: 14.0,
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                currentAccountPicture: GestureDetector(
                  child: CircleAvatar(
                    backgroundColor: Colors.black,
                    child: Icon(
                      Icons.person,
                      color: Colors.white,
                    ),
                  ),
                ),
                decoration: BoxDecoration(color: greyColor),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                child: Column(
                  children: [
                    InkWell(
                      onTap: () {},
                      child: ListTile(
                        title: Text(
                          "الرئيسية",
                          style: TextStyle(fontSize: 20.0, color: Colors.black),
                        ),
                        leading: Icon(
                          Icons.home,
                          color: Colors.black,
                          size: 30.0,
                        ),
                      ),
                    ),
                    Divider(
                      color: Colors.black,
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                child: Column(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Category()));
                      },
                      child: ListTile(
                        title: Text(
                          "قائمة الأطعمة",
                          style: TextStyle(fontSize: 20.0, color: Colors.black),
                        ),
                        leading: Icon(
                          Icons.food_bank,
                          color: Colors.black,
                          size: 30.0,
                        ),
                      ),
                    ),
                    Divider(
                      color: Colors.black,
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                child: Column(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Tracking()));
                      },
                      child: ListTile(
                        title: Text(
                          "تتبع الطلبية",
                          style: TextStyle(fontSize: 20.0, color: Colors.black),
                        ),
                        leading: Icon(
                          Icons.time_to_leave,
                          color: Colors.black,
                          size: 30.0,
                        ),
                      ),
                    ),
                    Divider(
                      color: Colors.black,
                    )
                  ],
                ),
              ),
              Theme(
                data: theme,
                child: ExpansionTile(
                    title: Text(
                      "حسابي",
                      style: TextStyle(fontSize: 20.0, color: Colors.black),
                    ),
                    leading: Padding(
                      padding: const EdgeInsets.only(right: 10.0),
                      child: Icon(
                        Icons.person,
                        color: Colors.black,
                        size: 30.0,
                      ),
                    ),
                    children: [
                      //===================Child account ========================
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                        child: Column(
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => MyProfile()));
                              },
                              child: ListTile(
                                title: Text(
                                  "تغيير الاعدادات الشخصية",
                                  style: TextStyle(
                                      fontSize: 20.0, color: Colors.black),
                                ),
                                leading: Icon(
                                  Icons.security,
                                  color: Colors.black,
                                  size: 30.0,
                                ),
                              ),
                            ),
                            Divider(
                              color: Colors.black,
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                        child: Column(
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            ChangePassword()));
                              },
                              child: ListTile(
                                title: Text(
                                  "تغيير كلمة المرور",
                                  style: TextStyle(
                                      fontSize: 20.0, color: Colors.black),
                                ),
                                leading: Icon(
                                  Icons.lock_open,
                                  color: Colors.black,
                                  size: 30.0,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      //===================End child account ====================
                    ]),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                child: Divider(
                  color: Colors.black,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                child: Column(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Favorate()));
                      },
                      child: ListTile(
                        title: Text(
                          "مفضلاتي",
                          style: TextStyle(fontSize: 20.0, color: Colors.black),
                        ),
                        leading: Icon(
                          Icons.favorite,
                          color: Colors.black,
                          size: 30.0,
                        ),
                      ),
                    ),
                    Divider(
                      color: Colors.black,
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                child: Column(
                  children: [
                    InkWell(
                      onTap: () {},
                      child: ListTile(
                        title: Text(
                          "طلباتي",
                          style: TextStyle(fontSize: 20.0, color: Colors.black),
                        ),
                        leading: Icon(
                          Icons.delivery_dining,
                          color: Colors.black,
                          size: 30.0,
                        ),
                      ),
                    ),
                    Divider(
                      color: Colors.black,
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                child: Column(
                  children: [
                    InkWell(
                      onTap: () {},
                      child: ListTile(
                        title: Text(
                          "من نحن؟",
                          style: TextStyle(fontSize: 20.0, color: Colors.black),
                        ),
                        leading: Icon(
                          Icons.info,
                          color: Colors.black,
                          size: 30.0,
                        ),
                      ),
                    ),
                    Divider(
                      color: Colors.black,
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                child: Column(
                  children: [
                    InkWell(
                      onTap: () {},
                      child: ListTile(
                        title: Text(
                          "مركز الدعم",
                          style: TextStyle(fontSize: 20.0, color: Colors.black),
                        ),
                        leading: Icon(
                          Icons.contact_mail,
                          color: Colors.black,
                          size: 30.0,
                        ),
                      ),
                    ),
                    Divider(
                      color: Colors.black,
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
