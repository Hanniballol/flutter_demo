import 'package:flutter/material.dart';
import 'package:gkperson_new_flutter/widget/state/base_mine_state.dart';
import 'package:gkperson_new_flutter/common/style/sup_style.dart';
import 'package:gkperson_new_flutter/common/style/sup_string_base.dart';
import 'package:gkperson_new_flutter/widget/sup_card_item.dart';

class ServiceCenterPage extends StatefulWidget {
  static final String sName = "service_center";

  @override
  _ServiceCenterPageState createState() => _ServiceCenterPageState();
}

class _ServiceCenterPageState extends State<ServiceCenterPage> {
  static const double _HEADER_ITEM_ICON_SIZE = 27.0;

  @override
  Widget build(BuildContext context) => SingleChildScrollView(
        child: Container(
          child: Column(
            children: <Widget>[
              Stack(
                alignment: const Alignment(0, 2.1),
                children: <Widget>[
                  Image.asset(SupIcons.SERVICE_BANNER, fit: BoxFit.fitWidth),
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
              SupCardItem(
                  elevation: 5,
                  margin: EdgeInsets.only(top: 100, left: 15, right: 15),
                  child: Padding(
                    padding: EdgeInsets.only(left: 10, right: 10),
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(top: 20, bottom: 10),
                          child: Row(
                            children: <Widget>[
                              Text("法律服务",
                                  style: TextStyle(
                                      color: SupColors.COLOR_TEXT_COLOR_33,
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold)),
                              Expanded(child: Container()),
                              Text("更多",
                                  style: TextStyle(
                                      color: SupColors.COLOR_BLUE,
                                      fontSize: 14))
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(bottom: 10),
                          child: Container(
                            color: SupColors.COLOR_LINE_GRAY,
                            height: 1,
                          ),
                        ),
                        _getLowServiceItem(
                            "最大化维护您的合法权益",
                            SupColors.COLOR_BLUE_ED,
                            SupColors.COLOR_BLUE_6B,
                            "财务纠纷",
                            SupIcons.PROPERTY_DISPUTE),
                        _getLowServiceItem(
                            "让法律守护你我他",
                            SupColors.COLOR_YELLOW_F2,
                            SupColors.COLOR_ORANGE,
                            "婚姻家庭",
                            SupIcons.MARRIAGE_FAMILY),
                        Container(height: 10)
                      ],
                    ),
                  )),
              Container(
                  margin: EdgeInsets.only(left: 15, right: 15, top: 20),
                  child: Stack(
                    alignment: Alignment.center,
                    children: <Widget>[
                      Image.asset(SupIcons.PSYCHOLOGICAL_COUNSELING),
                      Padding(
                        padding: EdgeInsets.only(left: 25),
                        child: Row(
                          children: <Widget>[
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  '心理咨询',
                                  style: TextStyle(
                                    color: SupColors.COLOR_TEXT_COLOR_33,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Container(height: 10),
                                Text(
                                  '优质服务，资质保证',
                                  style: TextStyle(
                                    color: SupColors.COLOR_LINE_GRAY,
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                            ),
                            Expanded(child: Container()),
                            Padding(
                              padding: EdgeInsets.only(right: 40),
                              child: Image.asset(
                                SupIcons.ARROW_RIGHT_GREEN,
                                width: 24,
                                height: 24,
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  )),
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

  _getLowServiceItem(text, backgroundColor, lineColor, cardText, icon) =>
      Container(
        child: Row(
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: 10, bottom: 10),
                  child: Icon(
                    Icons.trip_origin,
                    color: SupColors.COLOR_ORANGE,
                    size: 9,
                  ),
                ),
                SizedBox(
                  width: 90,
                  child: Text(text),
                ),
              ],
            ),
            Expanded(child: Container()),
            DecoratedBox(
              decoration: BoxDecoration(
                color: backgroundColor,
                borderRadius: BorderRadius.circular(5),
              ),
              child: Container(
                width: 170,
                height: 60,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(cardText),
                          Container(height: 10),
                          DecoratedBox(
                            decoration: BoxDecoration(
                                color: lineColor,
                                borderRadius: BorderRadius.circular(2)),
                            child: Container(width: 14, height: 3),
                          )
                        ],
                      ),
                    ),
                    Expanded(child: Container()),
                    Padding(
                      padding: EdgeInsets.only(right: 15),
                      child: Image.asset(
                        icon,
                        width: 40,
                        height: 40,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      );
}
