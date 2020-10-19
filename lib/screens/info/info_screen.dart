import 'package:flutter/material.dart';
import 'components/app_bar.dart';
import 'components/info_body.dart';

class InfoScreen extends StatelessWidget {
  final String companyName,details;
  const InfoScreen({
    Key key, 
    this.companyName, this.details,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: infoAppBar(context),
      body: Body(
        company: companyName,
        detailsgiven: details,
      ),
    );
  }
}
