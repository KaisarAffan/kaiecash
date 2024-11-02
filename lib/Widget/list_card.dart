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
          Text(subtitle,
              style: TextStyle(
                color: subtitle == 'failed' ? Colors.pink : Colors.green,
              )),
        ],
      ),
      onTap: onTap,
    );
  }
}

class HistoryGrid extends StatelessWidget {
  final Widget leading; // Icon or CircleAvatar
  final String title;
  final String subtitle;
  final String amount;
  final String trailing;
  final VoidCallback onTap;

  const HistoryGrid({
    Key? key,
    required this.leading,
    required this.title,
    required this.subtitle,
    required this.trailing,
    required this.onTap,
    required this.amount,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        elevation: 2,
        margin: EdgeInsets.all(8.0),
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 40,
                height: 40,
                child: leading,
              ),
              SizedBox(height: 8),
              Text(
                title,
                style: TextStyle(fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 4),
              Text(
                amount,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 4),
              Text(
                subtitle,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  color: subtitle == 'failed' ? Colors.red : Colors.green,
                ),
              ),
              SizedBox(height: 4),
              Text(
                trailing,
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
