import 'package:flutter/material.dart';
import 'package:kaiecash/Widget/list_card.dart';
import 'package:kaiecash/page/Models/history_model.dart';

class AdapterListView extends StatelessWidget {
  final ModelHistory modelHistory;

  const AdapterListView({super.key, required this.modelHistory});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(4),
        child: HistoryCard(
          leading: modelHistory.initial,
          title: modelHistory.amount,
          subtitle: modelHistory.status,
          trailing: modelHistory.date,
          onTap: () {}, amount: '',
        ));
  }
}
