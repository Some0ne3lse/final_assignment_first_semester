class Room {
  String description;
  int numberOfDoors;
  List<String>? items;

  Room({
    required this.description,
    required this.numberOfDoors,
    this.items,
  });


}
