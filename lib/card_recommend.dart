import 'package:flutter/material.dart';
import 'package:we_chart_read_app/base_cared.dart';

class CardRecommend extends BaseCard{
  //本周推荐
  @override
  _CardRecommendState createState() => _CardRecommendState();
}
class _CardRecommendState extends BaseCardState{

  @override
  void initState() {
    subTitleColor = Color(0xffb99444);
    super.initState();
  }
  @override
  topTitle(String title) {
    return super.topTitle('本周推荐');
  }
  @override
  Widget subTitle(String title) {
    return super.subTitle('送你一天无限卡~全场数据免费读 > ');
  }
  @override
  bottomContent() {
    return Expanded(
      child: Image.network(
        "http://www.devio.org/io/flutter_beauty/card_1.jpg",
        fit: BoxFit.cover,
        width: double.infinity,
      ),
    );
  }
}