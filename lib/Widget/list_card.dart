import 'package:flutter/material.dart';

class ListCard extends StatelessWidget {
  final String leading;
  final String title;
  final String subtitle;
  final IconData? trailing;
  const ListCard({
    super.key,
    required this.leading,
    required this.title,
    required this.subtitle,
    required this.trailing,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: CircleAvatar(child: Text(leading)),
        title: Text(title),
        subtitle: Text(subtitle),
        trailing: Icon(trailing),
      ),
    );
  }
}
