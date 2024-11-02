import 'package:flutter/material.dart';

class PersonCard extends StatelessWidget {
  final String leading;
  final String title;
  final String subtitle;
  final IconData? trailing;
  final VoidCallback onTap;
  const PersonCard({
    super.key,
    required this.leading,
    required this.title,
    required this.subtitle,
    required this.trailing,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: CircleAvatar(child: Text(leading)),
        title: Text(title),
        subtitle: Text(subtitle),
        trailing: Icon(trailing),
        onTap: onTap,
      ),
    );
  }
}

class HistoryCard extends StatelessWidget {
  final Widget leading; // Change to Widget to support Icon or CircleAvatar
  final String title;
  final String subtitle;
  final String amount;
  final String trailing;
  final VoidCallback onTap;

  const HistoryCard({
    super.key,
    required this.leading,
    required this.title,
    required this.subtitle,
    required this.trailing,
    required this.onTap,
    required this.amount,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: leading, // No need to cast anymore, since leading is a Widget
      title: Text(title),
      subtitle: Text(trailing),
      trailing: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(amount),
          Text(subtitle, style: TextStyle(color: Colors.pink)),
        ],
      ),
      onTap: onTap,
    );
  }
}
