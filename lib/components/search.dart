import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:stonksapp/constant.dart';
import 'package:stonksapp/screens/details/details_screen.dart';


class SearchBox extends StatefulWidget {
  final ValueChanged<String> onChanged;
  const SearchBox({
    Key key, this.onChanged,
  }) : super(key: key);

  @override
  _SearchBoxState createState() => _SearchBoxState();
}

class _SearchBoxState extends State<SearchBox> {
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      padding: EdgeInsets.symmetric(horizontal: 25, vertical: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        border: Border.all(
          color: ksecondaryColor.withOpacity(0.32),
          ),
        ),
      child: TextField(
        onChanged: widget.onChanged,
        controller: controller,
            onSubmitted: (value) {
              //print(controller.text);
              Navigator.push(
                context, 
                MaterialPageRoute(
                  builder: (context){
                    return DetailsScreen(companyName: controller.text);
                  },
                ),
              );
            },
        style: TextStyle(color: Colors.white),
        decoration: InputDecoration(
          border: InputBorder.none,
          icon: SvgPicture.asset("assets/icons/search.svg"),
          hintText: "Search Company",
          hintStyle: TextStyle(color: ksecondaryColor),
        ),
      ),
    );
  }
}