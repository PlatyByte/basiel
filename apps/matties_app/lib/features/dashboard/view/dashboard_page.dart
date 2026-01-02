import 'package:flutter/material.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actionsPadding: const EdgeInsets.symmetric(horizontal: 12),
        actions: [
          IconButton.outlined(
            onPressed: () {},
            icon: const Icon(Icons.person_outline_rounded),
          ),
        ],
      ),
      body: const SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text('Recents'),
              Text('Travel'),
              Card(
                child: Icon(Icons.flight_takeoff_sharp),
              ),
              Card(
                child: Icon(Icons.games_sharp),
              ),
              Text('games'),
              Placeholder(),
              Placeholder(),
              Placeholder(),
            ],
          ),
        ),
      ),
    );
  }
}
