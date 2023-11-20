import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            actions: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(Icons.notifications),
              )
            ],
            centerTitle: false,
            expandedHeight: 150,
            floating: true,
            pinned: true,
          ),
          SliverToBoxAdapter(
            child: SingleChildScrollView(),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
          onPressed: () {}, label: Icon(Icons.add)),
    );
  }
}
