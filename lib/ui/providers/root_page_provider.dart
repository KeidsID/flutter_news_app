import 'package:flutter/material.dart';

class RootPageProvider extends ChangeNotifier {
  /// `RootPage` states provider.
  RootPageProvider();

  int _navigationIndex = 0;

  /// Current navigation index.
  ///
  /// Used by [BottomNavigationBar] and [NavigationRail].
  int get navigationIndex => _navigationIndex;

  /// Set navigation index with a new value **without** notify listeners.
  void setNavigationIndex(int value) => _navigationIndex = value;

  /// Notify the framework that the internal state of this Provider has changed.
  void notifyStateChanges() => notifyListeners();
}
