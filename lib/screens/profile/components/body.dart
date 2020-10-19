import 'package:flutter/material.dart';
import 'profile.dart';

class Body extends StatelessWidget {
  final Profile p=Profile();
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(45),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
          bottomLeft: Radius.circular(30),
          bottomRight: Radius.circular(30),
        ),
      ),
      child: Text(
            "NAME: Stonks\nEMAIL ID: user@stonks.app\nBALANCE: ${p.balance}",
            style: TextStyle(
              height: 2.5,
            ),
          ),
      );
  }
}