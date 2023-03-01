import 'package:flutter/material.dart';

class RootPageProvider extends ChangeNotifier {
  RootPageProvider(int initialNavIndex) {
    setNavigationIndex(initialNavIndex);
  }

  late int _navIndex;

  /// Current navigation index.
  ///
  /// Used by [BottomNavigationBar] and [NavigationRail].
  int get navigationIndex => _navIndex;

  /// Set navigation index with a new value.
  void setNavigationIndex(int value) {
    _navIndex = value;
    notifyListeners();
  }
}
