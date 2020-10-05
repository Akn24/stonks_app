import 'package:flutter/material.dart';
import 'package:stonksapp/constant.dart';
import 'package:stonksapp/screens/details/components/company_img.dart';
import 'package:stonksapp/screens/details/components/order.dart';

class Body extends StatelessWidget {
  final String company;
  const Body({
    Key key,
    this.company
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ComImage(
          imgSrc: "assets/images/burger.png",
        ),
        Expanded(
            child: ComInfo(companyname: company),
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
    return Container(
      padding: EdgeInsets.all(20),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      child: Column(
        children: <Widget>[
          shopeName(name: companyname),
          Text(
            "Nowadays, making printed materials have become fast, easy and simple. If you want your promotional material to be an eye-catching object, you should make it colored. By way of using inkjet printer this is not hard to make. An inkjet printer is any printer that places extremely small droplets of ink onto paper to create an image.",
            style: TextStyle(
              height: 1.5,
            ),
          ),
          SizedBox(height: size.height * 0.15),
          Row(
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
        ],
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