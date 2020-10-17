
import 'package:alpha_vantage_package/alpha_vantage_package.dart';
import 'package:flutter_test/flutter_test.dart';

void main() async {

  test('Intraday', () async {
    final timeSeries = new TimeSeries("XQGC2FDRFUEVFV2L");
    //get the hourly time series for Microsoft with to-the-minute updates. You can change this.
    JSONObject json = await timeSeries.getIntraday("MSFT");
    var data = json.getJSONMap()["Time Series (1min)"];

    //convert to map to get specific data like the amount during lcose
    var data2 = Map<String, dynamic>.from(data);
    data2.forEach((k,v) => print(v["4. close"]));

     //Use get method to search entire json for key for stock
    expect(json.get("2. Symbol"), "MSFT");

    // Use map to find stock symbol
    expect(json.getJSONMap()["Meta Data"]["2. Symbol"], "MSFT");
    print(json.getJSONMap());


  });

  test('Intraday', () async {
    final technicalIndicator = new TechnicalIndicators("XQGC2FDRFUEVFV2L");
    //get SMA for microsoft
    JSONObject json = await technicalIndicator.getSMA("MSFT");

    // Use get method to search entire json for key for stock
    expect(json.get("1: Symbol"), "MSFT");

    // Use map to find stock symbol
    expect(json.getJSONMap()["Meta Data"]["1: Symbol"], "MSFT");
    print(json.getJSONMap());
  });
}