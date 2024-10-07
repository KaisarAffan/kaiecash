import 'package:flutter/material.dart';

class AcivementNotifier extends StatelessWidget {
  final IconData icon;
  final String heading1;
  final String heading2;
  const AcivementNotifier(
      {super.key,
      required this.icon,
      required this.heading1,
      required this.heading2});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Stack(
        children: [
          Container(
            height: 90,
            width: double.infinity,
            decoration: BoxDecoration(
                color: Color(0xFF687daf),
                borderRadius: BorderRadius.circular(18)),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
            child: Row(
              children: [
                CircleAvatar(
                  maxRadius: 25,
                  backgroundColor: Colors.white,
                  child: Icon(
                    icon,
                    color: Color(0xFF687daf),
                    size: 27,
                  ),
                ),
                const SizedBox(
                  width: 12,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      heading1,
                      style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
                    ),
                    Text(
                      heading2,
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          color: Colors.white.withOpacity(0.8)),
                    ),
                  ],
                )
              ],
            ),
          ),
          Positioned(
              top: -40,
              right: -45,
              child: Container(
                padding: const EdgeInsets.all(30),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border:
                        Border.all(width: 18, color: const Color(0xFF264CD2))),
              ))
        ],
      ),
    );
  }
}
