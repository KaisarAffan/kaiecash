import 'package:flutter/material.dart';
import 'package:kaiecash/Widget/ComponentPage/adapter_history.dart';
import 'package:kaiecash/page/Models/history_model.dart';
import 'package:kaiecash/utils/all_data.dart';

class ListHistory extends StatefulWidget {
  const ListHistory({super.key});

  @override
  State<ListHistory> createState() => _ListHistoryState();
}

class _ListHistoryState extends State<ListHistory> {
  // dummy data

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("History"),
      ),
      body: Container(
        child: ListView.builder(
          itemCount: history.length,
          itemBuilder: (context, index) {
            return AdapterListView(
              modelHistory: ModelHistory(history[index]['icons'],
                  history[index]['status'], history[index]['amount']),
            );
          },
        ),
      ),
    );
  }
}
