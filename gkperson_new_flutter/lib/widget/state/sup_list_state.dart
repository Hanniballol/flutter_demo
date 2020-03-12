import 'package:flutter/material.dart';
import 'dart:async';

mixin SupListState<T extends StatefulWidget> on State<T>,AutomaticKeepAliveClientMixin<T> {
  bool isShow = false;
  bool isLoading = false;
  int page = 1;
  bool isRefresh = false;

}