import 'package:flutter/material.dart';
import 'package:sam/drawerCode.dart';
import 'Utils/constants.dart';
import 'Utils/SizeConfig.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    var b = SizeConfig.screenWidth / 400;
    var h = SizeConfig.screenHeight / 800;

    return SafeArea(
      child: Scaffold(
        drawer: DrawerCode(),
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: cc,
        ),
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(vertical: h * 20),
                  width: SizeConfig.screenWidth,
                  color: bg,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        radius: b * 60,
                        backgroundColor: cc,
                      ),
                      sh(5),
                      Text(
                        "Dinesh Yadhuvanshi",
                        style: txtS(gc, 20, FontWeight.w400),
                      ),
                      sh(7),
                      MaterialButton(
                        splashColor: gc,
                        color: Colors.white,
                        height: h * 30,
                        onPressed: () {},
                        padding: EdgeInsets.symmetric(
                            horizontal: b * 10, vertical: h * 0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(b * 2),
                        ),
                        elevation: 5,
                        child: Text(
                          'Edit Profile',
                          style: txtS(gc, 16, FontWeight.w400),
                        ),
                      ),
                    ],
                  ),
                ),
                field('Location',
                    'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
                field('Pincode', 'XXXXXXX'),
                field('Date of Birthday', 'dd-mm-yy'),
                field('Gender', 'male'),
                field('Whatsapp', '+91xxxxxxxxxxx'),
                field('Gmail', 'xxxxxxxxxxx@gmail.com'),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget field(String a, String c) {
    var b = SizeConfig.screenWidth / 400;
    var h = SizeConfig.screenHeight / 800;

    return Container(
      padding: EdgeInsets.symmetric(horizontal: b * 20),
      margin: EdgeInsets.only(top: h * 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            a,
            style: txtS(Colors.grey, 14, FontWeight.w600),
          ),
          sh(7),
          Text(
            c,
            style: txtS(Colors.black, 15, FontWeight.w400),
          ),
          sh(8),
          Container(
            color: Colors.grey,
            height: h * 1,
          ),
        ],
      ),
    );
  }

  TextStyle txtS(Color col, double siz, FontWeight wg) {
    return TextStyle(
      color: col,
      fontWeight: wg,
      fontSize: SizeConfig.screenWidth * siz / 400,
    );
  }

  SizedBox sh(double h) {
    return SizedBox(height: SizeConfig.screenHeight * h / 800);
  }
}
