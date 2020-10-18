import 'package:flutter/material.dart';
import 'package:stonksapp/constant.dart';
import 'package:stonksapp/screens/details/components/fetchStock.dart';
import 'package:stonksapp/screens/details/components/order.dart';

class Body extends StatelessWidget {
  final String company;
  const Body({
    Key key,
    this.company
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: <Widget>[
        Text(
          company,
          style: TextStyle(
            color: Colors.white,
            height: 1.5,
            fontSize: 50,
            fontWeight: FontWeight.bold,
          ),
        ),
        
        Expanded(
          child: ComInfo(companyname: company),
        ),
        Container(
          padding: EdgeInsets.all(20),
          width: double.infinity,
          color: Colors.black,
          child: Row(
            children: <Widget>[
              OrderButton(
                str: "Buy",
                size: size,
                press: () {},
              ),
              OrderButton(
                str: "Sell",
                size: size,
                press: () {},
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class ComInfo extends StatelessWidget {
  final String companyname;
  const ComInfo({
    Key key, this.companyname,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
          child: Container(
        padding: EdgeInsets.all(20),
        width: double.infinity,
        height: size.height,
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
        ),
        child: ListView(
          children: <Widget>[
            shopeName(name: companyname),
            Padding(
              padding: EdgeInsets.all(50),
                child: FetchStock(),
            ),
          ],
        ),
      ),
    );
  }

  Row shopeName({String name}) {
    return Row(
      children: <Widget>[
        Icon(
          Icons.location_on,
          color: ksecondaryColor,
        ),
        SizedBox(width: 10),
        Text(name),
      ],
    );
  }
}