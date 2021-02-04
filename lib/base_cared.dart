import 'package:flutter/material.dart';
//卡片基类
class BaseCard extends StatefulWidget {
  @override
  BaseCardState createState() => BaseCardState();
}

class BaseCardState extends State<BaseCard> {
  Color subTitleColor = Colors.grey;
  Color bottomTitleColor = Colors.grey;
  @override
  Widget build(BuildContext context) {
    //裁切圆角
    return PhysicalModel(
      color: Colors.transparent,
      borderRadius: BorderRadius.circular(6),
      clipBehavior: Clip.antiAlias,//抗锯齿
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        child: Column(
          children: [
            topContent(),
            bottomContent(),
          ],
        ),
      ),
    );
  }

  topContent() {
    return Padding(
      padding: EdgeInsets.only(left: 20, top: 26, bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              topTitle(''),
              topTitle2(),
            ],
          ),
          subTitle(''),
        ],
      ),
    );
  }

  Widget subTitle(String title) {
    return Padding(
      padding: EdgeInsets.only(top: 5),
      child: Text(
        title,
        style: TextStyle(
          fontSize: 11,
          color: subTitleColor
        ),
      ),
    );
  }

  topTitle(String title) {
    return Text(
      title,
      style: TextStyle(
        fontSize: 22
      ),
    );
  }

  topTitle2() {
    return Padding(
      padding: EdgeInsets.only(bottom: 5),
      child: Text(
        ' / 第19期',
        style: TextStyle(
          fontSize: 10
        ),
      ),
    );
  }

  bottomContent() {
    return Container();
  }

  bottomTitle(String title) {
    return Text(
      title,
      style: TextStyle(
          fontSize: 12,
          color: bottomTitleColor,
      ),
    );
  }
}
