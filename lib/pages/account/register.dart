import 'package:flutter/material.dart';
import 'package:restaurant/config.dart';
import 'package:restaurant/pages/account/login.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    var appbar = AppBar(
      backgroundColor: greyColor,
      elevation: 0.0,
      leading: IconButton(
        icon: Icon(
          Icons.arrow_back_ios,
          color: blackColor,
        ),
        onPressed: () {
          Navigator.of(context).pop();
        },
      ),
    );
    return Scaffold(
      appBar: appbar,
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: Container(
          height: (MediaQuery.of(context).size.height -
              appbar.preferredSize.height -
              MediaQuery.of(context).padding.top),
          color: greyColor,
          child: Column(
            children: [
              Expanded(
                  child: Form(
                      child: Container(
                margin: EdgeInsets.symmetric(horizontal: 20.0),
                child: ListView(
                  children: [
                    Container(
                        child: Text("انشاء حساب",
                            style: TextStyle(
                                fontSize: 25.0,
                                color: primeryColor,
                                fontWeight: FontWeight.bold))),
                    Container(
                        margin: EdgeInsets.only(bottom: 20.0),
                        child: Text("جديد",
                            style: TextStyle(
                                fontSize: 25.0,
                                color: primeryColor,
                                fontWeight: FontWeight.bold))),
                    Container(
                      padding: EdgeInsets.only(left: 20.0, right: 20.0),
                      margin: EdgeInsets.only(bottom: 10.0),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25.0),
                          color: whiteColor),
                      child: Column(
                        children: [
                          TextFormField(
                            decoration: InputDecoration(
                                hintText: "الاسم كامل",
                                border: InputBorder.none),
                            validator: (String value) {
                              if (value.isEmpty || value.length < 4) {
                                return "عدد الاحرف لايكفي";
                              }
                            },
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 20.0, right: 20.0),
                      margin: EdgeInsets.only(bottom: 10.0),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25.0),
                          color: whiteColor),
                      child: Column(
                        children: [
                          TextFormField(
                            decoration: InputDecoration(
                                hintText: "البريد الالكتروني",
                                border: InputBorder.none),
                            validator: (String value) {
                              if (value.isEmpty ||
                                  value.indexOf(".") == -1 ||
                                  value.indexOf("@") == -1) {
                                return "ادخل البريد الالكتروني";
                              }
                            },
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 10.0),
                      padding: EdgeInsets.only(left: 20.0, right: 20.0),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25.0),
                          color: whiteColor),
                      child: Column(
                        children: [
                          TextFormField(
                            obscureText: true,
                            decoration: InputDecoration(
                                hintText: "كلمة المرور",
                                border: InputBorder.none),
                            validator: (String value) {
                              if (value.isEmpty || value.length < 6) {
                                return "عدد احرف كلمة المرور لاتكفي";
                              }
                            },
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 30.0),
                      padding: EdgeInsets.only(left: 20.0, right: 20.0),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25.0),
                          color: whiteColor),
                      child: Column(
                        children: [
                          TextFormField(
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                                hintText: "رقم الهاتف",
                                border: InputBorder.none),
                            validator: (String value) {
                              if (value.isEmpty || value.length < 10) {
                                return "رقم الهاتف غير صحيح";
                              }
                            },
                          ),
                        ],
                      ),
                    ),
                    MaterialButton(
                      padding: EdgeInsets.symmetric(horizontal: 1.0),
                      onPressed: () {},
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        padding: EdgeInsets.only(
                            left: 20.0, right: 20.0, top: 5.0, bottom: 5.0),
                        child: Text(
                          "تسجيل",
                          style: TextStyle(fontSize: 25.0, color: whiteColor),
                          textAlign: TextAlign.center,
                        ),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25.0),
                            color: primeryColor),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 10.0),
                      alignment: Alignment.bottomCenter,
                      child: Text(
                          "بالنقر على على تسجيل انت توافق على شروط \nوالاحكام و‏سياسة ملفات تعريف",
                          style: TextStyle(
                              fontSize: 16.0,
                              color: blackColor,
                              fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center),
                    ),
                  ],
                ),
              ))),
              Container(
                alignment: Alignment.center,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Text("لديك حساب بلفعل؟",
                          style: TextStyle(
                            fontSize: 20.0,
                            color: blackColor,
                          )),
                    ),
                    GestureDetector(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return Login();
                          }));
                        },
                        child: Text(
                          "قم بدخول",
                          style: TextStyle(
                            fontSize: 20.0,
                            color: primeryColor,
                          ),
                        ))
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
