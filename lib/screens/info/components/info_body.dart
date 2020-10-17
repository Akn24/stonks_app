import 'package:flutter/material.dart';
import 'package:stonksapp/constant.dart';

class Body extends StatelessWidget {
  final String company,detailsgiven;
  const Body({
    Key key,
    this.company, this.detailsgiven
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
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
          child: ComInfo(
            companyname: company,
            details: detailsgiven,
          ),
        ),
      ],
    );
  }
}


class ComInfo extends StatelessWidget {
  final String companyname,details;
  const ComInfo({
    Key key, this.companyname, this.details,
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
          child: Column(
            children: <Widget>[
                shopeName(name: companyname),
                Padding(
                padding: EdgeInsets.all(10),
                    child: Text(
                    //"hi\nhi\nhi\nhi\nhi\nhi\nhi\nhi\nhi\nhi\nhi\nhi\nhi\nhi\nhi\nhi\nhi\nhi\nhi\nhi\nhi\nhi\nhi\nhi\nhi\nhi\nhi\nhi\nhi\nhi\nhi\nhi\nhi\nhi\nhi\nhi\nhi\nhi\nhi\nhi\nhi\nhi\nhi\nhi\nhi\nhi\n",
                    details+"\n",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                    height: 1.5,
                    fontSize: 15,
                  ),
                ),
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