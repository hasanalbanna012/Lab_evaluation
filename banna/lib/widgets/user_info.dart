// lib/widgets/user_info_section.dart
import 'package:flutter/material.dart';

class UserInfoSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 77, 91, 202),
      padding: EdgeInsets.all(12),
      child: Row(
        children: [
          CircleAvatar(radius: 30, child: Icon(Icons.person)),
          SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Hasan Al Banna',
                  style: TextStyle(fontWeight: FontWeight.bold)),
              Text('ID: 221-15-5064'),
              Container(
                margin: EdgeInsets.only(top: 4),
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text('Active',
                    style: TextStyle(color: Colors.white, fontSize: 12)),
              )
            ],
          )
        ],
      ),
    );
  }
}
