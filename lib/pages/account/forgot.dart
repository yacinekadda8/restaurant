import 'package:flutter/material.dart';
import 'package:restaurant/config.dart';

class Forgot extends StatefulWidget {
  @override
  _ForgotState createState() => _ForgotState();
}

class _ForgotState extends State<Forgot> {
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
                        padding: EdgeInsets.only(left: 10.0, right: 10.0),
                        child: Text("نسية كلمة المرور",
                            style: TextStyle(
                                fontSize: 25.0,
                                color: primeryColor,
                                fontWeight: FontWeight.bold))),
                    Container(
                      margin: EdgeInsets.only(bottom: 40.0, top: 10.0),
                      padding: EdgeInsets.only(left: 10.0, right: 10.0),
                      alignment: Alignment.bottomRight,
                      child: Text(
                          "من فضلك ادخل الايميل المرتبط بحسابك لاستلام رابط\nاو رمز لاعادةانشاء كلمة مرور جديدة",
                          style: TextStyle(
                            fontSize: 16.0,
                            color: blackColor,
                          ),
                          textAlign: TextAlign.start),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 20.0, right: 20.0),
                      margin: EdgeInsets.only(bottom: 20.0),
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
                    MaterialButton(
                      padding: EdgeInsets.symmetric(horizontal: 1.0),
                      onPressed: () {},
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        padding: EdgeInsets.only(
                            left: 20.0, right: 20.0, top: 5.0, bottom: 5.0),
                        child: Text(
                          "ارسال",
                          style: TextStyle(fontSize: 25.0, color: whiteColor),
                          textAlign: TextAlign.center,
                        ),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25.0),
                            color: primeryColor),
                      ),
                    ),
                  ],
                ),
              ))),
            ],
          ),
        ),
      ),
    );
  }
}
