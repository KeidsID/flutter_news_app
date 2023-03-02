import 'package:flutter/material.dart';

class RootPageProvider extends ChangeNotifier {
  RootPageProvider();

  int _navIndex = 0;

  /// Current navigation index.
  ///
  /// Used by [BottomNavigationBar] and [NavigationRail].
  int get navigationIndex => _navIndex;

  /// Set navigation index with a new value.
  void setNavigationIndexState(int value) {
    _navIndex = value;
    notifyListeners();
  }

  /// Set navigation index with a new value **without** notify listeners.
  void setNavigationIndex(int value) => _navIndex = value;
}
