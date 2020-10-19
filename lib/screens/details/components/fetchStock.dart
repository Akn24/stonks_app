import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class FetchStock extends StatefulWidget {
  final String company;

  const FetchStock({Key key, this.company}) : super(key: key);
  @override
  _FetchStockState createState() => _FetchStockState(company);
}

class _FetchStockState extends State<FetchStock> {
  var sym,open,high,low,price;
  String symbol,company;
  _FetchStockState(this.company);
  void fetchsym(){
    if(company=='Infosys')
      symbol='INFY';
    else if(company=='Apple')
      symbol='AAPL';
    else if(company=='Microsoft')
      symbol='MSFT';
    else if(company=='IBM')
      symbol='IBM';
  }
  void getPrice() async{
    http.Response response = await http.get(
      'https://www.alphavantage.co/query?function=GLOBAL_QUOTE&symbol=$symbol&apikey=XQGC2FDRFUEVFV2L'
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
    fetchsym();
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
