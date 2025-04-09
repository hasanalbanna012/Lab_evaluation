// lib/widgets/balance_card.dart
import 'package:flutter/material.dart';

class BalanceCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            Expanded(
              child: Column(
                children: [
                  Text('****', style: TextStyle(fontSize: 24)),
                  Text('Usable Balance'),
                ],
              ),
            ),
            ElevatedButton.icon(
              onPressed: () {},
              icon: Icon(Icons.qr_code_scanner),
              label: Text(
                'Scan Me',
                selectionColor: Colors.white,
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.indigo,
              ),
            )
          ],
        ),
      ),
    );
  }
}
