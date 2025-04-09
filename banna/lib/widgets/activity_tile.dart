import 'package:flutter/material.dart';

class ActivityTile extends StatelessWidget {
  final String time;
  final String action;

  ActivityTile({required this.time, required this.action});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(Icons.calendar_today),
      title: Text(time),
      subtitle: Text(action),
    );
  }
}
