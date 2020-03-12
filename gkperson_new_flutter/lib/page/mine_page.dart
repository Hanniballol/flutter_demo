import 'package:flutter/material.dart';
import 'package:gkperson_new_flutter/widget/sup_user_header.dart';
import 'package:gkperson_new_flutter/widget/state/base_mine_state.dart';
import 'package:gkperson_new_flutter/widget/sup_mine_item.dart';

class MinePage extends StatefulWidget {
  static final String sName = "mine";

  @override
  _MinePageState createState() => _MinePageState();
}

class _MinePageState extends BaseMineState<MinePage> {
  @override
  Widget build(BuildContext context) {
    return NestedScrollView(
        headerSliverBuilder: (context, _) {
          return sliverBuilder(context, _);
        },
        body: NotificationListener(
            child: ListView.builder(itemBuilder: (context,index){
              return _getItem(index);
            },itemCount: 20,)));
  }

  Widget _getItem(int index) => SupMineItem();
}
