import 'package:flutter/material.dart';
import 'package:restaurant/config.dart';
import 'package:restaurant/pages/account/forgot.dart';
import 'package:restaurant/pages/account/register.dart';

class ChangePassword extends StatefulWidget {
  @override
  _ChangePasswordState createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
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
                      margin: EdgeInsets.only(bottom: 20.0),
                      padding: EdgeInsets.only(left: 20.0, right: 20.0),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25.0),
                          color: whiteColor),
                      child: TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                            hintText: "كلمة المرور الحالبة",
                            border: InputBorder.none),
                        validator: (String value) {
                          if (value.isEmpty || value.length < 6) {
                            return "عدد احرف كلمة المرور لاتكفي";
                          }
                        },
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 20.0),
                      padding: EdgeInsets.only(left: 20.0, right: 20.0),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25.0),
                          color: whiteColor),
                      child: TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                            hintText: "كلمة المرور الجديدة",
                            border: InputBorder.none),
                        validator: (String value) {
                          if (value.isEmpty || value.length < 6) {
                            return "عدد احرف كلمة المرور لاتكفي";
                          }
                        },
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 20.0),
                      padding: EdgeInsets.only(left: 20.0, right: 20.0),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25.0),
                          color: whiteColor),
                      child: TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                            hintText: "تأكيد كلمة المرور",
                            border: InputBorder.none),
                        validator: (String value) {
                          if (value.isEmpty || value.length < 6) {
                            return "عدد احرف كلمة المرور لاتكفي";
                          }
                        },
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
                          "حفظ",
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
