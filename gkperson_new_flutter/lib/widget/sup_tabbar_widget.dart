import 'package:flutter/material.dart';

class SupTabBarWidget extends StatefulWidget {
  static const int BOTTOM_TAB = 1;
  static const int TOP_TAB = 2;

  final int type;
  final bool resizeToAvoidBottomPadding;
  final List<BottomNavigationBarItem> tabItems;
  final List<Widget> tabViews;
  final Color backgroundColor;
  final Color indicatorColor;
  final Widget title;
  final Widget drawer;
  final Widget floatingActionButton;
  final FloatingActionButtonLocation floatingActionButtonLocation;
  final Widget bottomBar;
  final TarWidgetControl tarWidgetControl;
  final ValueChanged<int> onPageChanged;
  final bool showAppBar;

  SupTabBarWidget(
      {Key key,
      this.type,
      this.tabItems,
      this.tabViews,
      this.backgroundColor,
      this.indicatorColor,
      this.title,
      this.drawer,
      this.bottomBar,
      this.floatingActionButtonLocation,
      this.floatingActionButton,
      this.resizeToAvoidBottomPadding = true,
      this.tarWidgetControl,
      this.onPageChanged,
      this.showAppBar = false})
      : super(key: key);

  @override
  _SupTabBarState createState() => new _SupTabBarState(
      type,
      tabViews,
      indicatorColor,
      drawer,
      floatingActionButton,
      tarWidgetControl,
      onPageChanged,
      showAppBar);
}

class _SupTabBarState extends State<SupTabBarWidget>
    with SingleTickerProviderStateMixin {
  final int _type;
  final List<Widget> _tabViews;
  final Color _indicatorColor;
  final Widget _drawer;
  final Widget _floatingActionButton;
  final TarWidgetControl _tarWidgetControl;
  final PageController _pageController = PageController();
  final ValueChanged<int> _onPageChanged;
  final bool _showAppBar;

  _SupTabBarState(
      this._type,
      this._tabViews,
      this._indicatorColor,
      this._drawer,
      this._floatingActionButton,
      this._tarWidgetControl,
      this._onPageChanged,
      this._showAppBar)
      : super();

  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: widget.tabItems.length, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (this._type == SupTabBarWidget.TOP_TAB) {
      return Scaffold(
        resizeToAvoidBottomPadding: widget.resizeToAvoidBottomPadding,
        floatingActionButton:
            SafeArea(child: _floatingActionButton ?? Container()),
        persistentFooterButtons:
            _tarWidgetControl == null ? null : _tarWidgetControl.footerButton,
        appBar: AppBar(
            backgroundColor: Theme.of(context).primaryColor,
            title: widget.title,
            bottom: TabBar(
//                tabs: widget.tabItems,
                controller: _tabController,
                indicatorColor: _indicatorColor,
                onTap: (index) {
                  _onPageChanged?.call(index);
                  _pageController
                      .jumpTo(MediaQuery.of(context).size.width * index);
                })),
        body: PageView(
          controller: _pageController,
          children: _tabViews,
          onPageChanged: (index) {
            _tabController.animateTo(index);
            _onPageChanged?.call(index);
          },
        ),
        bottomNavigationBar: widget.bottomBar,
      );
    }
    return Scaffold(
      drawer: _drawer,
//      appBar: AppBar(
//          backgroundColor: Theme.of(context).primaryColor, title: widget.title),
      body: PageView(
        controller: _pageController,
        children: _tabViews,
        onPageChanged: (index) {
          _tabController.animateTo(index);
          _onPageChanged?.call(index);
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: widget.tabItems,
        onTap: (index) {
          _onPageChanged?.call(index);
          _pageController.jumpTo(MediaQuery.of(context).size.width * index);
        },
      ),
    );
  }
}

class TarWidgetControl {
  List<Widget> footerButton = [];
}
