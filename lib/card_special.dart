import 'package:flutter/material.dart';
import 'package:we_chart_read_app/base_cared.dart';
//长安十二时辰
class CardSpecial extends BaseCard{

  @override
  _CardSpecial createState() => _CardSpecial();
}

class _CardSpecial extends BaseCardState{
  @override
  void initState() {
    bottomTitleColor = Colors.blue;
    super.initState();
  }
  @override
  topContent() {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.only(left: 66,right: 66,top: 36,bottom: 30),
          decoration: BoxDecoration(
            color: Color(0xfffffcf7)
          ),
          child: Container(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  blurRadius: 20,//某个半径
                  offset: Offset(0,10)//(水平偏移,垂直偏移)
                )
              ]
            ),
            child: Image.asset('images/10.jpg'),
          ),
        ),
        Container(
          padding: EdgeInsets.only(left: 20,top: 15,bottom: 15,right: 20),
          decoration: BoxDecoration(
            color: Color(0xfff7f3ea)
          ),
          child: Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '长安十二时辰...',
                    style: TextStyle(
                      fontSize: 16,
                      color: Color(0xff473b25)
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 5),
                    child: Text(
                      '马伯庸',
                      style: TextStyle(
                        fontSize: 13,
                        color: Color(0xff7d725c)
                      ),
                    ),
                  )
                ],
              ),
              Container(
                margin: EdgeInsets.only(left: 20),
                padding: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  gradient: LinearGradient(
                    colors: [
                      Color(0xffd9bc82),
                      Color(0xffecd9ae),
                    ]
                  )
                ),
                child: Text(
                  '分享免费领',
                  style: TextStyle(
                    color: Color(0xff4f3b1a),
                    fontSize: 11
                  ),
                ),
              )
            ],
          ),
        )
      ],
    );
  }

  @override
  bottomContent() {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  "images/8.jpg",
                  width: 26,
                  height: 26,
                ),
                Text(
                  '揭露历史真相'
                )
              ],
            ),
          ),
          bottomTitle("更多免费好书领不停  >>>>>")
        ],
      ),
    );
  }

}