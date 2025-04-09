import 'package:flutter/material.dart';
import 'screens/dashboard_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '1Card UI',
      theme: ThemeData(primarySwatch: Colors.indigo),
      home: DashboardScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}