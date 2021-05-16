import 'Utils/SizeConfig.dart';
import 'Utils/constants.dart';
import 'drawerCode.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
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
        body: Container(
          child: ListView.builder(
            padding: EdgeInsets.only(top: h * 25),
            itemCount: 10,
            itemBuilder: (BuildContext context, int index) {
              return news();
            },
          ),
        ),
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

  Widget news() {
    var b = SizeConfig.screenWidth / 400;
    var h = SizeConfig.screenHeight / 800;

    return Container(
      padding: EdgeInsets.symmetric(horizontal: b * 10, vertical: h * 10),
      child: Row(
        children: [
          Container(
            height: h * 120,
            width: b * 120,
            decoration: BoxDecoration(
              color: cc,
              borderRadius: BorderRadius.circular(b * 10),
            ),
          ),
          SizedBox(width: b * 10),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: b * 250,
                child: Text(
                  "This is the heading of the reality news and so and so on",
                  style: txtS(Colors.black, 17, FontWeight.w500),
                ),
              ),
              sh(5),
              Container(
                width: b * 250,
                child: Text(
                  "This is the heading of the reality news and so and so on",
                  style: txtS(Colors.black38, 14, FontWeight.w400),
                ),
              ),
              Container(
                width: b * 250,
                child: Row(
                  children: [
                    Icon(Icons.calendar_today,
                        color: Colors.black38, size: b * 14),
                    SizedBox(width: b * 4),
                    Text(
                      "14-12-2020",
                      style: txtS(Colors.black45, 14, FontWeight.w300),
                    ),
                    Spacer(),
                    Container(
                      alignment: Alignment.center,
                      padding: EdgeInsets.symmetric(
                          horizontal: b * 10, vertical: h * 4),
                      decoration: BoxDecoration(
                        color: gc,
                        borderRadius: BorderRadius.circular(b * 5),
                      ),
                      child: Text(
                        "Sports",
                        style: txtS(Colors.white, 14, FontWeight.w400),
                      ),
                    ),
                    SizedBox(width: b * 10),
                    Icon(Icons.bookmark_outline,
                        color: Colors.black, size: b * 24),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
