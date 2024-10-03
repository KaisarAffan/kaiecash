import 'package:flutter/material.dart';
import 'package:kaiecash/page/Models/history_model.dart';

class ListCard extends StatelessWidget {
  final ModelHistory modelHistory;
  const ListCard({super.key, required this.modelHistory});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Icon(
            modelHistory.icons.icon,
            color: Colors.white,
          ),
          const SizedBox(width: 8),
          Text(
            modelHistory.status,
            style: const TextStyle(
              color: Colors.white,
              fontFamily: 'MontserratSemi',
            ),
          ),
          const SizedBox(width: 8),
          Text(
            modelHistory.amount,
            style: const TextStyle(
              color: Colors.white,
              fontFamily: 'MontserratSemi',
            ),
          ),
        ],
      ),
    );
  }
}
