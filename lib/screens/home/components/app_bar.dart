import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:stonksapp/constant.dart';

AppBar homeAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.black,
      elevation: 0,
      leading: IconButton(icon: SvgPicture.asset("assets/icons/menu.svg"),
      onPressed: (){

        },
      ),
      title: Center(
        child: RichText(
          text: TextSpan(
            style: Theme.of(context)
            .textTheme
            .title
            .copyWith(fontWeight: FontWeight.bold),
            children: [
              TextSpan(
                text: "Stonks",
                style: TextStyle(color: ksecondaryColor),
              ),
              TextSpan(
                text: "App",
                style: TextStyle(color: kPrimaryColor),
              )
            ],
            ),
          ),
      ),
        actions: <Widget>[
          IconButton(icon: SvgPicture.asset("assets/icons/notification.svg"),
          onPressed: (){
            
          })
        ],
    );
  }