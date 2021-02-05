import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:we_chart_read_app/card_recommend.dart';
import 'package:we_chart_read_app/card_special.dart';
import 'package:we_chart_read_app/custom_appbar.dart';

import 'card_free.dart';
import 'card_share.dart';

class ContentPager extends StatefulWidget {
  final ValueChanged<int> onPageChanged;
  final ContentPagerController contentPagerController;

  const ContentPager({Key key, this.onPageChanged, this.contentPagerController}) : super(key: key);
  //构造方法, 可选参数
  @override
  _ContentPagerState createState() => _ContentPagerState();
}

class _ContentPagerState extends State<ContentPager> {
  //视图比例
  PageController _pageController = PageController(
    viewportFraction: 0.8
  );
  static List<Color> _colors = [
    Colors.blue,
    Colors.red,
    Colors.deepOrange,
    Colors.teal,
  ];
  @override
  void initState() {
    if (widget.contentPagerController != null) {
      widget.contentPagerController._pageController = _pageController;
    }
    _statusBar();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //appBar
        CustomAppBar(),
        Expanded(
          //expanded高度撑开,否则在Column中没有高度会报错
          child: PageView(
            controller: _pageController,
            onPageChanged: widget.onPageChanged,
            children: [
              _wrapItem(CardRecommend()),
              _wrapItem(CardShare()),
              _wrapItem(CardFree()),
              _wrapItem(CardSpecial()),
            ],
          )
        )
      ],
    );
  }
  Widget _wrapItem (Widget widget) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: widget,
    );
  }
  _statusBar () {
    SystemUiOverlayStyle uiOverlayStyle = SystemUiOverlayStyle(
      systemNavigationBarColor: Color(0xFF000000),
      systemNavigationBarDividerColor: null,
      statusBarColor: Colors.transparent,
      systemNavigationBarIconBrightness: Brightness.light,
      statusBarIconBrightness: Brightness.dark,
      statusBarBrightness: Brightness.light,
    );
    SystemChrome.setSystemUIOverlayStyle(uiOverlayStyle);
  }
}

//内容区域的控制器
class ContentPagerController {
  PageController _pageController;
  void jumpToPage (int page) {
    //dart 编程技巧:安全调用
    _pageController?.jumpToPage(page);
  }
}
