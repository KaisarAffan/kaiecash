import 'package:flutter/material.dart';
import 'package:kaiecash/page/Component%20Page/adapter_history_grid.dart';
import 'package:kaiecash/page/Models/history_model.dart';
import 'package:kaiecash/utils/all_data.dart';

class GridHistory extends StatefulWidget {
  const GridHistory({super.key});

  @override
  State<GridHistory> createState() => _GridHistoryState();
}

class _GridHistoryState extends State<GridHistory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("History"),
      ),
      body: ListView.builder(
        itemCount: 2,
        itemBuilder: (context, index) {
          return AdapterGridView(
            key: ValueKey(index), // Provide a unique key for each item
            modelHistory: ModelHistory(
                history[index]['date'],
                history[index]['status'],
                history[index]['amount'],
                history[index]['profileInitial'],
                history[index]['sourceName']),
          );
        },
      ),
    );
  }
}
