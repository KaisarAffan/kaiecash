import 'package:flutter/material.dart';
import 'package:kaiecash/page/Models/history_model.dart';

class ListCard extends StatelessWidget {
  final ModelHistory modelHistory;
  const ListCard({super.key, required this.modelHistory});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: CircleAvatar(child: Text(modelHistory.initial)),
        title: Text(modelHistory.amount),
        subtitle: Text(modelHistory.status),
        trailing: Icon(modelHistory.icons.icon),
      ),
    );
  }
}
