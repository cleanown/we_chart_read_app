import 'package:flutter/material.dart';
import 'package:we_chart_read_app/base_cared.dart';

class CardFree extends BaseCard{
  @override
  _CardFreeState createState() => _CardFreeState();
}
const BOOK_LIST = [
  {
    "title": "暴力沟通",
    "cover": "images/1.jpg",
    "price": "19.6",
  },
  {
    "title": "论中国",
    "cover": "images/2.jpg",
    "price": "23.6",
  },
  {
    "title": "饥饿的盛世:乾隆时代的得与失",
    "cover": "images/3.jpg",
    "price": "54.6",
  },
  {
    "title": "焚天之怒第4卷至大结局",
    "cover": "images/4.jpg",
    "price": "45.6",
  },{
    "title": "我就是风口",
    "cover": "images/5.jpg",
    "price": "37.6",
  },
  {
    "title": "大宋的智慧",
    "cover": "images/6.jpg",
    "price": "79.6",
  },
];
class _CardFreeState extends BaseCardState{

  @override
  topTitle(String title) {
    return super.topTitle("免费听书馆");
  }

  @override
  Widget subTitle(String title) {
    return super.subTitle('第 108 期');
  }

  @override
  bottomContent() {
    return Expanded(
      child: Container(
        margin: EdgeInsets.only(top: 20),
        child: Column(
          children: [
            Expanded(
              child: _bookList(),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 20),
              child: _bottomButton(),
            ),
          ],
        ),
      ),
    );
  }

  _bookList() {
    return GridView.count(
      crossAxisCount: 3,
      mainAxisSpacing: 10,
      childAspectRatio: 0.46,
      padding: EdgeInsets.only(),
    );
  }

  _bottomButton() {

  }
}