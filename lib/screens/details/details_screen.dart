import 'package:flutter/material.dart';
import 'package:stonksapp/constant.dart';
import 'package:stonksapp/screens/details/components/app_bar.dart';
import 'package:stonksapp/screens/details/components/body.dart';

class DetailsScreen extends StatelessWidget {
  final String companyName;
  const DetailsScreen({
    Key key, 
    this.companyName,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: detailsAppBar(context),
      body: Body(company: companyName),
    );
  }
}
