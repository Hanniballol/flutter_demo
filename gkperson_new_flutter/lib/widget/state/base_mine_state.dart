import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:gkperson_new_flutter/widget/pull/sup_sliver_header_delegate.dart';
import 'package:gkperson_new_flutter/widget/sup_user_header.dart';
import 'package:gkperson_new_flutter/widget/pull/nested/nested_refresh.dart';
import 'package:provider/provider.dart';

abstract class BaseMineState<T extends StatefulWidget> extends State<T>
    with SingleTickerProviderStateMixin {
  final GlobalKey<NestedScrollViewRefreshIndicatorState> refreshIKey =
      GlobalKey();
  final HonorModel honorModel = HonorModel();

  List<Widget> sliverBuilder(BuildContext context, bool innerBoxIsScrolled) {
    double headerSize = 191;
    double bottomSize = 117;
    double chartSize = headerSize;
    return <Widget>[
      SliverPersistentHeader(
          pinned: true,
          delegate: SupSliverHeaderDelegate(
              minHeight: headerSize,
              maxHeight: 191,
              changeSize: true,
              snapConfig: FloatingHeaderSnapConfiguration(
                  vsync: this,
                  curve: Curves.bounceInOut,
                  duration: const Duration(milliseconds: 10)),
              builder: (context, shrinkOffset, overlapsContent) =>
                  Transform.translate(
                    offset: Offset(0, -shrinkOffset),
                    child: SizedBox.expand(
                      child: Container(
                        child: SupUserHeaderItem(),
                      ),
                    ),
                  ))),
      SliverPersistentHeader(
        pinned: true,
        floating: true,
        delegate: SupSliverHeaderDelegate(
            minHeight: bottomSize,
            maxHeight: bottomSize,
            snapConfig: FloatingHeaderSnapConfiguration(
              vsync: this,
              curve: Curves.bounceInOut,
              duration: const Duration(milliseconds: 10),
            ),
            builder: (context, shrinkOffset, overlapsContent) {
              return SizedBox.expand(
                child: Padding(
                  padding: EdgeInsets.zero,
                  child: MultiProvider(
                      providers: [
                        ChangeNotifierProvider(builder: (_) => honorModel)
                      ],
                      child: Consumer<HonorModel>(
                          builder: (context, honorModel, _) {
                        return SupUserHeaderBottom();
                      })),
                ),
              );
            }),
      ),
    ];
  }
}

class HonorModel extends ChangeNotifier {
  int _beStaredCount;
  List _honorList;

  int get beStaredCount => _beStaredCount;

  set beStaredCount(int value) {
    _beStaredCount = value;
    notifyListeners();
  }

  List get honorList => _honorList;

  set honorList(List value) {
    _honorList = value;
    notifyListeners();
  }
}
