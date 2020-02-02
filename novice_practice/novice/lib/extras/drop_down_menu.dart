import 'package:flutter/material.dart';


class FavouriteCity extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _FavouriteCityState();
  }
}

class _FavouriteCityState extends State<FavouriteCity> {
  var cityName = "ARIF";
  var _currencies = ['BDT','USD','Canadian'];
  var selectedCurrency = "BDT";

  @override
  Widget build(BuildContext context) {
    debugPrint("state created");
    return Scaffold(
      appBar: AppBar(
        title: Text("Your Favourite city"),
        centerTitle: true,
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            TextField(
              onSubmitted: (String cityName) {
                setState(() {
                  debugPrint("state created and set State");
                  cityName = cityName;
                });
              },
            ),
            DropdownButton<String>(
              items: _currencies.map((String dropDownStringItem){
                return DropdownMenuItem<String>(
                  value: dropDownStringItem,
                  child: Text(dropDownStringItem,style: TextStyle(color: Colors.red),),
                );
              }).toList(),
              onChanged: (String selectedValue){
                setState(() {
                  debugPrint(selectedValue);
                  this.selectedCurrency = selectedValue;
                  this.cityName = selectedValue;
                });

              },
              value: selectedCurrency,
            ),
            Text("Your Selected currency $cityName")
          ],
        ),
      ),
    );
  }
}
