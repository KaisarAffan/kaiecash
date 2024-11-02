import 'package:flutter/material.dart';
import 'package:kaiecash/Widget/list_card.dart';
import 'package:kaiecash/page/Models/history_model.dart';

class AdapterGridView extends StatelessWidget {
  final ModelHistory modelHistory;

  const AdapterGridView({super.key, required this.modelHistory});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(4),
        child: HistoryGrid(
          leading: modelHistory.initial,
          title: modelHistory.sourceName,
          subtitle: modelHistory.status,
          trailing: modelHistory.date,
          amount: modelHistory.amount,
          onTap: () {},
        ));
  }
}
