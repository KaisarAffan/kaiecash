import 'package:flutter/material.dart';

class ProfileHeading extends StatelessWidget {
  final String profile;
  final String nama;
  final String email;
  final String numberCell;
  const ProfileHeading(
      {super.key,
      required this.profile,
      required this.nama,
      required this.email,
      required this.numberCell});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(15, 60, 0, 0),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  image: DecorationImage(
                    image: AssetImage(profile),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(width: 15),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(Icons.person),
                      Text(
                        nama,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 25),
                    child: Text(
                      email,
                      style: TextStyle(fontSize: 15),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 25),
                    child: Text(
                      numberCell,
                      style:
                          TextStyle(fontWeight: FontWeight.w300, fontSize: 13),
                    ),
                  )
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
