import 'package:flutter/material.dart';
import 'package:kaiecash/Widget/colors.dart';

class BalanceCard extends StatelessWidget {
  final bool isVisible;
  final VoidCallback onToggleVisibility;
  final String rekening;
  final String saldo;

  const BalanceCard(
      {super.key,
      required this.rekening,
      required this.saldo,
      required this.isVisible,
      required this.onToggleVisibility});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: secondaryColor,
        borderRadius: BorderRadius.circular(20),
      ),
      height: 135,
      width: 326,
      padding: EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                decoration: BoxDecoration(
                  color: tresierColor,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text(
                  'Plus+',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 10,
                  ),
                ),
              ),
              SizedBox(width: 8),
              Text(
                rekening,
                style: TextStyle(fontSize: 12, color: textColor),
              ),
              Spacer(),
              Icon(
                Icons.arrow_forward_ios,
                size: 18,
              )
            ],
          ),
          Divider(color: Colors.grey[400], height: 20),
          Text(
            'Saldo',
            style: TextStyle(
              fontSize: 12,
              color: textColor,
            ),
          ),
          Row(
            children: [
              Text(
                isVisible ? saldo : '******',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(width: 8),
              IconButton(
                icon: Icon(
                  isVisible ? Icons.visibility : Icons.visibility_off,
                  color: Colors.black54,
                ),
                onPressed: onToggleVisibility,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
