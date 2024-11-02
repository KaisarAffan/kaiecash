import 'package:flutter/material.dart';
import 'package:kaiecash/page/Component%20Page/adapter_history_list.dart';
import 'package:kaiecash/page/Models/history_model.dart';
import 'package:kaiecash/utils/all_data.dart';

class ListHistory extends StatefulWidget {
  const ListHistory({super.key});

  @override
  State<ListHistory> createState() => _ListHistoryState();
}

class _ListHistoryState extends State<ListHistory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("History"),
      ),
      body: ListView.builder(
        itemCount: history.length,
        itemBuilder: (context, index) {
          return AdapterListView(
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
