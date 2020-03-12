import 'package:flutter/material.dart';
import 'package:gkperson_new_flutter/common/style/sup_style.dart';
import 'package:gkperson_new_flutter/widget/sup_tabbar_widget.dart';
import 'package:gkperson_new_flutter/page/home_page.dart';
import 'package:gkperson_new_flutter/page/service_center_page.dart';
import 'package:gkperson_new_flutter/page/mine_page.dart';

class MainHomePage extends StatefulWidget {
  static const sName = "main/home";

  @override
  State<StatefulWidget> createState() => _MainHomePageState();
}

class _MainHomePageState extends State<MainHomePage> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    List<BottomNavigationBarItem> tabs = [
      _renderTab(SupIcons.MAIN_HOME, SupIcons.MAIN_MINE_SELECT, "首页", 0),
      _renderTab(SupIcons.MAIN_SERVICE_CENTER,
          SupIcons.MAIN_SERVICE_CENTER_SELECT, "服务中心", 1),
      _renderTab(SupIcons.MAIN_MINE, SupIcons.MAIN_MINE_SELECT, "我的", 2)
    ];
    return SupTabBarWidget(
        type: SupTabBarWidget.BOTTOM_TAB,
        tabItems: tabs,
        tabViews: <Widget>[HomePage(), ServiceCenterPage(), MinePage()],
        onPageChanged: (index) {
          setState(() {
            _currentIndex = index;
          });
        });
  }

  _renderTab(icon, selectedIcon, text, index) => BottomNavigationBarItem(
      icon: Image.asset(_currentIndex == index ? selectedIcon : icon,
          width: 20, height: 20),
      title: Text(text,
          style: TextStyle(
              color: _currentIndex == index
                  ? SupColors.COLOR_TEXT_SELECTED_COLOR
                  : SupColors.COLOR_TEXT_COLOR_33)));
}
