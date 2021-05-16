import 'package:sam/homePage.dart';
import 'package:sam/profile.dart';
import 'package:sam/videoPage.dart';

import 'Utils/SizeConfig.dart';
import 'Utils/constants.dart';
import 'package:flutter/material.dart';

class DrawerCode extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    var b = SizeConfig.screenWidth / 400;
    var h = SizeConfig.screenHeight / 800;

    return Drawer(
      child: Column(
        children: [
          Container(
            color: cc,
            height: h * 200,
          ),
          InkWell(
            splashColor: cc,
            highlightColor: cc,
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) {
                  return Home();
                }),
              );
            },
            child: Container(
              color: Colors.transparent,
              padding:
                  EdgeInsets.symmetric(horizontal: b * 30, vertical: h * 15),
              alignment: Alignment.centerLeft,
              child: Text(
                "Home",
                style: txtS(Colors.black, 20, FontWeight.w400),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: b * 10),
            color: Colors.grey[300],
            height: h * 1,
          ),
          InkWell(
            splashColor: cc,
            highlightColor: cc,
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) {
                  return VideoPage();
                }),
              );
            },
            child: Container(
              color: Colors.transparent,
              padding:
                  EdgeInsets.symmetric(horizontal: b * 30, vertical: h * 15),
              alignment: Alignment.centerLeft,
              child: Text(
                "Videos",
                style: txtS(Colors.black, 20, FontWeight.w400),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: b * 10),
            color: Colors.grey[300],
            height: h * 1,
          ),
          InkWell(
            splashColor: cc,
            highlightColor: cc,
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) {
                  return Profile();
                }),
              );
            },
            child: Container(
              color: Colors.transparent,
              padding:
                  EdgeInsets.symmetric(horizontal: b * 30, vertical: h * 15),
              alignment: Alignment.centerLeft,
              child: Text(
                "Profile",
                style: txtS(Colors.black, 20, FontWeight.w400),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: b * 10),
            color: Colors.grey[300],
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
