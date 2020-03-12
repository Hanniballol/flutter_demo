import 'package:flutter/material.dart';
import 'package:gkperson_new_flutter/widget/state/base_mine_state.dart';
import 'package:gkperson_new_flutter/common/style/sup_style.dart';
import 'package:gkperson_new_flutter/common/style/sup_string_base.dart';
import 'package:gkperson_new_flutter/widget/sup_card_item.dart';

class HomePage extends StatefulWidget {
  static final String sName = "home";

  @override
  State<StatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends BaseMineState<HomePage> {
  static const double _HEADER_ITEM_ICON_SIZE = 27.0;
  static const double _SERVICE_ITEM_ICON_WIDTH = 50.0;
  static const double _SERVICE_ITEM_ICON_HEIGHT = 42.0;

  @override
  Widget build(BuildContext context) => SingleChildScrollView(
        child: Container(
          child: Column(
            children: <Widget>[
              Stack(
                alignment: const Alignment(0, 2.1),
                children: <Widget>[
                  Image.asset(SupIcons.HOME_BANNER, fit: BoxFit.fitWidth),
                  SupCardItem(
                      elevation: 5,
                      child: Container(
                        alignment: Alignment.center,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            _getFuncItem(SupStringBase.longRangeVisit,
                                SupIcons.LONG_RANGE_VISIT, () {}),
                            _getFuncItem(SupStringBase.spotMeeting,
                                SupIcons.SPOT_MEETING, () {}),
                            _getFuncItem(SupStringBase.eCommerce,
                                SupIcons.E_COMMERCE, () {}),
                            _getFuncItem(SupStringBase.familyService,
                                SupIcons.FAMILY_SERVICE, () {}),
                            _getFuncItem(SupStringBase.interactivePlatform,
                                SupIcons.INTERACTIVE_PLATFORM, () {}),
                          ],
                        ),
                      )),
                ],
              ),
              Container(
                margin: EdgeInsets.only(top: 100, left: 15, right: 15),
                child: Stack(
                  alignment: Alignment.center,
                  children: <Widget>[
                    Image.asset(SupIcons.JAIL_INTRODUCTION_BACKGROUND),
                    Positioned(
                      left: 47,
                      right: 47,
                      child: Column(
                        children: <Widget>[
                          Text(
                            "监狱简介",
                            style: TextStyle(
                              color: SupColors.COLOR_TEXT_COLOR_33,
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "湖南省女子监狱是全省最大的女犯监狱，地处长沙市雨花区香樟路，占地约280亩，交通湖南省女子监狱是全省最大的女犯监狱，地处长沙市雨花区香樟路，占地约280亩，交通",
                            maxLines: 3,
                            style: TextStyle(
                              color: SupColors.COLOR_TEXT_COLOR_66,
                              fontSize: 12,
                            ),
                            overflow: TextOverflow.ellipsis,
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 20, left: 15),
                alignment: Alignment.centerLeft,
                child: Text(
                  "更多服务",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 14),
                ),
              ),
              Flex(
                direction: Axis.horizontal,
                children: <Widget>[
                  _getServiceItem(
                      SupStringBase.JAIL_PUBLIC, SupIcons.JAIL_PUBLIC, () {}),
                  _getServiceItem(
                      SupStringBase.ALL_LOW, SupIcons.ALL_LOW, () {}),
                  _getServiceItem(
                      SupStringBase.WORK_TRENDS, SupIcons.WORK_TRENDS, () {}),
                ],
              ),
            ],
          ),
        ),
      );

  _getFuncItem(String title, String iconPath, onPressed) => Expanded(
        child: Column(children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 20),
            child: Image.asset(
              iconPath,
              width: _HEADER_ITEM_ICON_SIZE,
              height: _HEADER_ITEM_ICON_SIZE,
            ),
          ),
          RawMaterialButton(
            onPressed: onPressed,
            materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
            child: Text(title),
          ),
        ]),
      );

  _getServiceItem(String title, String iconPath, onPressed) {
    return Expanded(
        flex: 1,
        child: SupCardItem(
          elevation: 4,
          child: Container(
            height: 134,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset(
                  iconPath,
                  width: _SERVICE_ITEM_ICON_WIDTH,
                  height: _SERVICE_ITEM_ICON_HEIGHT,
                ),
                Padding(
                  padding: EdgeInsets.only(top: 15),
                  child: Text(
                    title,
                    style: TextStyle(
                        fontSize: 12,
                        color: SupColors.COLOR_TEXT_COLOR_33,
                        fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
