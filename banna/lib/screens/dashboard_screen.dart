import 'package:flutter/material.dart';
import '../widgets/user_info.dart';
import '../widgets/balance_card.dart';
import '../widgets/activity_tile.dart';
import '../widgets/app_drawer.dart';

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Text('1Card'),
          actions: [
            Icon(Icons.more_vert),
            SizedBox(width: 10),
          ],
          bottom: TabBar(
            isScrollable: true,
            indicatorColor: Colors.white,
            tabs: [
              Tab(icon: Icon(Icons.dashboard), text: 'Dashboard'),
              Tab(icon: Icon(Icons.design_services), text: 'Services'),
              Tab(icon: Icon(Icons.money), text: 'Transaction'),
              Tab(icon: Icon(Icons.dashboard), text: 'Virtual ID'),
            ],
          ),
        ),
        drawer: AppDrawer(),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            UserInfoSection(),
            BalanceCard(),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Text('Recent Activities',
                  style: TextStyle(fontWeight: FontWeight.bold)),
            ),
            ActivityTile(
              time: 'now',
              action: 'Last Login with this device',
            ),
            ActivityTile(
              time: 'yesterday',
              action: 'Last Logout with this device)',
            ),
          ],
        ),
      ),
    );
  }
}
