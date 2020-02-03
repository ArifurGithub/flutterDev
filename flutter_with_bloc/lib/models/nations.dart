import 'package:meta/meta.dart';

class NationModel {
  final String nationName;
  final String imagePath;
  final String countryId;

  NationModel({@required this.nationName, @required this.imagePath, @required this.countryId});
}

List<NationModel> nations = [
  NationModel(nationName: "Argentina", imagePath: "images/countryFlags/argentina.png", countryId: "52"),
  NationModel(nationName: "Brazil", imagePath: "images/countryFlags/brazil.png", countryId: "54"),
  NationModel(nationName: "Germany", imagePath: "images/countryFlags/germany.png", countryId: "21"),
  NationModel(nationName: "England", imagePath: "images/countryFlags/england.png", countryId: "14"),
  NationModel(nationName: "France", imagePath: "images/countryFlags/france.png", countryId: "18"),
  NationModel(nationName: "Italy", imagePath: "images/countryFlags/italy.png", countryId: "27"),
  NationModel(nationName: "Spain", imagePath: "images/countryFlags/spain.png", countryId: "45")
];