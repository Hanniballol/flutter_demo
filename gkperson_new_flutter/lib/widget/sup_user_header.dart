import 'package:flutter/material.dart';
import 'package:gkperson_new_flutter/common/style/sup_style.dart';
import 'package:gkperson_new_flutter/widget/sup_card_item.dart';
import 'package:gkperson_new_flutter/common/style/sup_string_base.dart';
import 'package:gkperson_new_flutter/common/style/sup_style.dart';

class SupUserHeaderItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SupCardItem(
        child: Padding(
          padding: EdgeInsets.zero,
          child: Container(
            child: Image.asset(SupIcons.MINE_BACKGROUND, fit: BoxFit.fitWidth),
            alignment: Alignment.topCenter,
          ),
        ),
        margin: EdgeInsets.zero,
        elevation: 0);
  }
}

class SupUserHeaderBottom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SupCardItem(
        elevation: 10,
        child: Row(
          children: <Widget>[
            Container(width: 17),
            CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage(SupIcons.ALL_LOW),
              backgroundColor: Colors.transparent,
            ),
            Container(width: 15),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "王二二",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: SupColors.COLOR_TEXT_COLOR_33),
                  ),
                  Container(height: 12),
                  SizedBox(
                    width: 67,
                    height: 25,
                    child: FlatButton(
                        padding: EdgeInsets.only(left: 11, right: 11),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                            side: BorderSide(
                                color: SupColors.COLOR_TEXT_COLOR_66,
                                width: 0.5)),
                        onPressed: () {},
                        child: Row(
                          children: <Widget>[
                            Image.asset(SupIcons.UN_AUTHENTICATION,
                                width: 12, height: 12),
                            Text(
                              "未认证",
                              style: TextStyle(
                                  color: SupColors.COLOR_TEXT_COLOR_66,
                                  fontSize: 10),
                            )
                          ],
                        )),
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment(0, -0.5),
              child: Row(
                children: <Widget>[
                  IconButton(
                      alignment: Alignment.centerRight,
                      icon:
                          Image.asset(SupIcons.SETTING, width: 16, height: 16),
                      onPressed: () {}),
                  IconButton(
                      icon:
                          Image.asset(SupIcons.MESSAGE, width: 16, height: 16),
                      onPressed: () {}),
                ],
              ),
            )
          ],
        ));
  }
}

class SupUserHeaderChart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.orangeAccent,
    );
  }
}
