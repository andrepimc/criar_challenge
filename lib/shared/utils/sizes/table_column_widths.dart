import 'package:flutter/material.dart';

class TableColumnWidths {
  static Map<int, TableColumnWidth> biggestTable = const {
    0: FlexColumnWidth(1.35),
    1: FlexColumnWidth(1.25),
    2: FlexColumnWidth(2.65),
    3: FlexColumnWidth(1.15),
    4: FlexColumnWidth(1.75),
  };
  static Map<int, TableColumnWidth> smallestTable = const {
    0: FlexColumnWidth(1),
    1: FlexColumnWidth(1.75),
    2: FlexColumnWidth(2),
  };
}
