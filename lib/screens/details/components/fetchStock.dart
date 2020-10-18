import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class FetchStock extends StatefulWidget {
  @override
  _FetchStockState createState() => _FetchStockState();
}

class _FetchStockState extends State<FetchStock> {
  var sym,open,high,low,price;
  void getPrice() async{
    http.Response response = await http.get(
      'https://www.alphavantage.co/query?function=GLOBAL_QUOTE&symbol=INFY&apikey=XQGC2FDRFUEVFV2L'
    );
    setState((){
    sym = json.decode(response.body)['Global Quote']['01. symbol'];
    open = json.decode(response.body)['Global Quote']['02. open'];
    high = json.decode(response.body)['Global Quote']['03. high'];
    low = json.decode(response.body)['Global Quote']['04. low'];
    price = json.decode(response.body)['Global Quote']['05. price'];
    });
    print(sym);
    print(open);
    print(high);
    print(low);
    print(price);
  }
  @override
  Widget build(BuildContext context) {
    getPrice();
    return Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "Symbol: $sym",
            textAlign: TextAlign.left,
              style: TextStyle(
              height: 2.5,
              fontSize: 20,
              fontWeight: FontWeight.bold,
              ),
          ),
          Text(
            "Open: $open",
            textAlign: TextAlign.left,
              style: TextStyle(
              height: 2.5,
              fontSize: 20,
              fontWeight: FontWeight.bold,
              ),
          ),
          Text(
            "High: $high",
            textAlign: TextAlign.left,
              style: TextStyle(
              height: 2.5,
              fontSize: 20,
              fontWeight: FontWeight.bold,
              ),
          ),
          Text(
            "Low: $low",
            textAlign: TextAlign.left,
              style: TextStyle(
              height: 2.5,
              fontSize: 20,
              fontWeight: FontWeight.bold,
              ),
          ),
          Text(
            "Price: $price",
            textAlign: TextAlign.left,
              style: TextStyle(
              height: 2.5,
              fontSize: 20,
              fontWeight: FontWeight.bold,
              ),
          ),
          
        ],
      ),
    );
  }
}
