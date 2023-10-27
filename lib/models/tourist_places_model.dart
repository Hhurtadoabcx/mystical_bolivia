class TouristPlacesModel {
  final String name;
  final String image;
  TouristPlacesModel({
    required this.name,
    required this.image,
  });
}

List<TouristPlacesModel> touristPlaces = [
  TouristPlacesModel(name: "Scz", image: "assets/icons/scz.png"),
  TouristPlacesModel(name: "Cbba", image: "assets/icons/cbba.png"),
  TouristPlacesModel(name: "Lpz", image: "assets/icons/lpz.png"),
  TouristPlacesModel(name: "Pt", image: "assets/icons/pt.png"),
  TouristPlacesModel(name: "Trj", image: "assets/icons/trj.png"),
];
