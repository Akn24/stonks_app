import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:stonksapp/constant.dart';

class InfoCard extends StatelessWidget {
  final String companyname,svgSrc;
  final Function press;
  const InfoCard({
    Key key, this.companyname, this.svgSrc, this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return InkWell(
      onTap: press,
        child: Padding(
        padding: EdgeInsets.all(12),
          child: Container(
          margin: EdgeInsets.symmetric(vertical: 20),
          width: size.width*0.9,
          height: 166,
          child: DecoratedBox(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              gradient: LinearGradient(
                colors: [
                  Color(0xFFFF961F).withOpacity(0.7),
                  kPrimaryColor.withOpacity(0.7),
                ],
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: SvgPicture.asset(
                      svgSrc,
                      width: size.width*0.2,
                    ),
                  ),
                  Expanded(
                    child: RichText(
                      text: TextSpan(
                        style: TextStyle(color: Colors.white),
                        children: [
                          TextSpan(
                            text: "Learn more about \n",
                            style: TextStyle(fontSize: 15),
                          ),
                          TextSpan(
                            text: companyname,
                            style: TextStyle(
                              fontSize: 40,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextSpan(
                            text:
                                "\nTap to know more! ",
                            style: TextStyle(fontSize: 10),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}