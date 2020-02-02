import 'package:flutter/material.dart';

/*
void main(){
  runApp(
      MaterialApp(
        title: "Smart Calculator UI",
        home: SmartCalculator(),
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            accentColor: Colors.lightBlueAccent,
            primaryColor: Colors.lightBlue,
            brightness: Brightness.dark
        ),
      )
  );
}
*/

class SmartCalculator extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _SmartCalculatorState();
  }

}

class _SmartCalculatorState extends State<SmartCalculator>{
  var minimumMargin = 4.0;
  var _currencies = ['BDT','USD','Canadian'];
  var pricipleController = TextEditingController();
  var roiController = TextEditingController();
  var termController = TextEditingController();
  var result = "";
  var selectedCurrency = '';

  final _keyForm = GlobalKey<FormState>();
  @override
  void initState() {
    super.initState();
    selectedCurrency = _currencies[0];
  }
  @override
  Widget build(BuildContext context) {
    TextStyle textStyle = Theme.of(context).textTheme.title;
    return Scaffold(
//      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        title: Text("Smart Calculator"),
      ),
      body: Form(
        key: _keyForm,
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: ListView(
            children: <Widget>[
              getHeaderImage(),
              Padding(
                padding: EdgeInsets.only(top: minimumMargin,bottom: minimumMargin),
                child: TextFormField(
                  keyboardType: TextInputType.number,
                  style: textStyle,
                  controller: pricipleController,
                  validator: (String value){
                    if(value.isEmpty){
                      return 'Enter Pricicple here !';
                    }else{
                      return null;
                    }
                  },
                  decoration: InputDecoration(
                      labelText: 'Principle',
                      hintText: 'Enter the priciple',
                      labelStyle: textStyle,
                      errorStyle: TextStyle(
                          color: Colors.yellowAccent,
                          fontSize: 14.0
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0)
                      )
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: minimumMargin,bottom: minimumMargin),
                child: TextFormField(
                  style: textStyle,
                  controller: roiController,
                  keyboardType: TextInputType.number,
                  validator: (String value){
                    if(value.isEmpty){
                      return 'Enter Rate of Interest !';
                    }else{
                      return null;
                    }
                  },
                  decoration: InputDecoration(
                      labelText: 'Rate of Interest',
                      hintText: 'In percent',
                      labelStyle: textStyle,
                      errorStyle: TextStyle(
                          color: Colors.yellowAccent,
                          fontSize: 14.0
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0)
                      )
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: minimumMargin,bottom: minimumMargin),
                child: Row(
                  children: <Widget>[
                    Expanded(
                        child: TextFormField(
                          style: textStyle,
                          controller: termController,
                          validator: (String value){
                            if(value.isEmpty){
                              return 'Enter term here !';
                            }else{
                              return null;
                            }
                          },
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                              labelText: 'Terms',
                              hintText: 'In Year',
                              labelStyle: textStyle,
                              errorStyle: TextStyle(
                                  color: Colors.yellowAccent,
                                  fontSize: 14.0
                              ),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5.0)
                              )
                          ),
                        )
                    ),
                    Container(
                      width: minimumMargin * 5,
                    ),
                    Expanded(
                      child: DropdownButton<String>(
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
                          });

                        },
                        value: selectedCurrency,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: minimumMargin,bottom: minimumMargin),
                child: Row(
                  children: <Widget>[
                    Expanded(
                        child: RaisedButton(
                          onPressed: (){
                            setState(() {
                              if(_keyForm.currentState.validate()){
                                this.result = _getCalculatedInterest();
                              }
                            });
                          },
                          child: Text("Calculate",style: textStyle,textScaleFactor: 1.5,),
                          color: Colors.green,
                          textColor: Colors.white,
                        )
                    ),
                    Container(
                      width: minimumMargin * 5,
                    ),
                    Expanded(
                        child: RaisedButton(
                          onPressed: (){
                            setState(() {
                              _reset();
                            });
                          },
                          child: Text("Reset",style: textStyle,textScaleFactor: 1.5,),
                          color: Colors.redAccent,
                          textColor: Colors.white,
                        )
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: minimumMargin*2),
                child: Text(this.result,style: textStyle,),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget getHeaderImage(){
    AssetImage assetImage = AssetImage('assets/images/taka.png');
    Image image = Image(image: assetImage, width: 125.0, height: 125.0);
    return Container(child: Center(child: image,),margin: EdgeInsets.all(minimumMargin*10),);
  }

  String _getCalculatedInterest(){
    double principle = double.parse(pricipleController.text);
    double roi = double.parse(roiController.text);
    double term = double.parse(termController.text);

    double totalPayable = principle + (principle * roi * term) / 100;

    return "After $term years, your investment will be worthy $totalPayable";
  }

  void _reset(){
    pricipleController.text='';
    roiController.text='';
    termController.text='';
    selectedCurrency = _currencies[0];
    result = '';
  }

}