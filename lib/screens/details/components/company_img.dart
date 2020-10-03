import 'package:flutter/material.dart';

class ComImage extends StatelessWidget {
  final String imgSrc;
  const ComImage({
    Key key, 
    this.imgSrc,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Image.asset(
    imgSrc,
    height: size.height*0.35,
    width: double.infinity,
    fit: BoxFit.fill,
    );
  }
}
