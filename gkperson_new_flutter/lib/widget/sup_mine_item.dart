import 'package:flutter/material.dart';
import 'package:gkperson_new_flutter/common/style/sup_style.dart';

class SupMineItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 50,
        child: Column(
          children: <Widget>[
            Expanded(
                child: Row(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(left: 15),
                  child: Image.asset(
                    SupIcons.HOUSEKEEPING_SERVICE,
                    width: 17,
                    height: 17,
                  ),
                ),
                Expanded(
                    child: Text(
                  "家属服务",
                  style: TextStyle(
                      color: SupColors.COLOR_TEXT_COLOR_33, fontSize: 14),
                )),
                Padding(
                  padding: EdgeInsets.only(right: 15),
                  child: Image.asset(
                    SupIcons.ARROW_RIGHT,
                    width: 10,
                    height: 16,
                  ),
                ),
              ],
            )),
            Padding(
              padding: EdgeInsets.only(left: 15, right: 15),
              child: Container(
                color: SupColors.COLOR_LINE_GRAY,
                height: 1,
              ),
            ),
          ],
        ));
  }
}
