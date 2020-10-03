import 'package:flutter/material.dart';
import 'package:stonksapp/components/bottom_nav.dart';
import 'package:stonksapp/screens/home/components/app_bar.dart';
import 'package:stonksapp/screens/home/components/body.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: homeAppBar(context),
      bottomNavigationBar: BottomNav(),
      body: Body(),
    );
  }
}
