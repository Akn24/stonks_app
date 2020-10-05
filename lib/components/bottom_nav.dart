import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:stonksapp/screens/home/home_screen.dart';
import 'package:stonksapp/screens/news/news.dart';
import 'package:stonksapp/screens/profile/profile_screen.dart';

class BottomNav extends StatelessWidget {
  const BottomNav({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 35),
      height: 40,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, -7),
            blurRadius: 33,
            color: Color(0xFF6DAED9).withOpacity(0.11),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          IconButton(
            icon: SvgPicture.asset(
              "assets/icons/home.svg"),
            onPressed: (){
              Navigator.push(
                context, 
                MaterialPageRoute(
                  builder: (context){
                    return HomeScreen();
                  },
                ),
              );
            },
          ),
          IconButton(
            icon: SvgPicture.asset(
              "assets/icons/Following.svg"),
            onPressed: (){
              Navigator.push(
                context, 
                MaterialPageRoute(
                  builder: (context){
                    return HomeScreen();
                  },
                ),
              );
            },
          ),
          IconButton(
            icon: SvgPicture.asset(
              "assets/icons/Glyph.svg"),
            onPressed: (){
              Navigator.push(
                context, 
                MaterialPageRoute(
                  builder: (context){
                    return NewsScreen();
                  },
                ),
              );
            },
          ),
          IconButton(
            icon: SvgPicture.asset(
              "assets/icons/person.svg"),
            onPressed: (){
              Navigator.push(
                context, 
                MaterialPageRoute(
                  builder: (context){
                    return ProfileScreen();
                  },
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}