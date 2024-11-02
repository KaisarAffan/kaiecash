import 'package:flutter/widgets.dart';

class ModelHistory {
  final String date;
  final String status;
  final String amount;
  final Widget initial;
  final String sourceName;

  ModelHistory(
    this.date,
    this.status,
    this.amount,
    this.initial,
    this.sourceName,
  );
}
