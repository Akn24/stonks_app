import 'package:flutter/material.dart';
import 'package:stonksapp/screens/details/details_screen.dart';
import 'package:stonksapp/screens/home/components/stockCard.dart';


class StockList extends StatelessWidget {
  const StockList({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[
          StockCard(
            svgSrc: "assets/icons/Infosys-01.svg",
            title: "Infosys",
            press: (){
              Navigator.push(
                context, 
                MaterialPageRoute(builder: (context) => DetailsScreen(companyName: "Infosys")),
              );
            },
          ),
          StockCard(
            svgSrc: "assets/icons/apple.svg",
            title: "Apple",
            press: (){
              Navigator.push(
                context, 
                MaterialPageRoute(
                  builder: (context){
                    return DetailsScreen(companyName: "Apple");
                  },
                ),
              );
            },
          ),
          StockCard(
            svgSrc: "assets/icons/microsoft.svg",
            title: "Microsoft",
            press: (){
              Navigator.push(
                context, 
                MaterialPageRoute(
                  builder: (context){
                    return DetailsScreen(companyName: "Microsoft");
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

