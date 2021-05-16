import 'Utils/SizeConfig.dart';
import 'Utils/constants.dart';
import 'drawerCode.dart';
import 'package:flutter/material.dart';

class VideoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    var b = SizeConfig.screenWidth / 400;
    var h = SizeConfig.screenHeight / 800;

    return SafeArea(
      child: Scaffold(
        drawer: DrawerCode(),
        appBar: AppBar(
          backgroundColor: cc,
        ),
        body: Container(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Container(
              height: h * 60,
              alignment: Alignment.center,
              width: SizeConfig.screenWidth,
              decoration: BoxDecoration(color: Colors.white, boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  blurRadius: 4,
                ),
              ]),
              child: Text(
                "Videos",
                style: txtS(Colors.black, 20, FontWeight.w500),
              ),
            ),
            sh(8),
            Container(
              height: h * 200,
              color: cc,
              width: SizeConfig.screenWidth,
            ),
            sh(10),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: b * 10),
              child: Text(
                "This is the heading of the reality news and so and so on",
                style: txtS(Colors.black, 15, FontWeight.w500),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: b * 10),
              child: Text(
                "Date And Time",
                style: txtS(Colors.black45, 14, FontWeight.w300),
              ),
            ),
            sh(10),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: b * 10),
              child: Text(
                "This is the heading of the reality news and so and so on",
                style: txtS(Colors.black45, 14, FontWeight.w300),
              ),
            ),
            sh(15),
            Container(
              height: h * 45,
              margin: EdgeInsets.symmetric(horizontal: b * 30),
              alignment: Alignment.center,
              width: SizeConfig.screenWidth,
              decoration: BoxDecoration(
                color: Color(0xfff2f2f2),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.15),
                    blurRadius: 4,
                    offset: Offset(0, 3),
                  ),
                ],
                borderRadius: BorderRadius.circular(b * 5),
              ),
              child: Text(
                "Information",
                style: txtS(Colors.black, 16, FontWeight.w500),
              ),
            ),
            sh(20),
            Expanded(
              child: ListView.builder(
                physics: BouncingScrollPhysics(),
                padding: EdgeInsets.zero,
                itemCount: 10,
                itemBuilder: (BuildContext context, int index) {
                  return news();
                },
              ),
            ),
          ]),
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
            height: h * 80,
            width: b * 140,
            decoration: BoxDecoration(
              color: cc,
              borderRadius: BorderRadius.circular(b * 5),
            ),
          ),
          SizedBox(width: b * 10),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: b * 220,
                child: Text(
                  "This is the heading of the reality news and so and so on",
                  style: txtS(Colors.black, 14, FontWeight.w500),
                ),
              ),
              sh(5),
              Container(
                width: b * 220,
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
                          horizontal: b * 25, vertical: h * 2.5),
                      decoration: BoxDecoration(
                        color: gc,
                        borderRadius: BorderRadius.circular(b * 5),
                      ),
                      child: Text(
                        "Info",
                        style: txtS(Colors.white, 14, FontWeight.w400),
                      ),
                    ),
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
