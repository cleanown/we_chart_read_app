import 'package:flutter/cupertino.dart';
import 'package:we_chart_read_app/base_cared.dart';

class CardShare extends BaseCard{

  @override
  _CardShareState createState() => _CardShareState();
}

class _CardShareState extends BaseCardState{
  @override
  topTitle(String title) {
    return super.topTitle("分享得联名卡");
  }
  @override
  Widget subTitle(String title) {
    return super.subTitle("分享给朋友最多可获得12天无限卡");
  }

  @override
  bottomContent() {
    return Expanded(
      child: Container(
        margin: EdgeInsets.only(top: 20),
        decoration: BoxDecoration(
          color: Color(0xfff6f7f9)
        ),
        child: Column(
          children: [
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(top: 20,bottom: 20),
                child: Image.network(
                  "http://www.devio.org/io/flutter_beauty/card_list.png",
                  fit: BoxFit.cover,
                  width: double.infinity,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 20),
              child: bottomTitle("265546546人 * 参与活动"),
            ),
          ],
        ),
      ),
    );
  }

}