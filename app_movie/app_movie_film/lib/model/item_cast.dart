class ItemCast {
  String name;
  String character;
  String urlPhoto;
  ItemCast(
      {required this.name, required this.character, required this.urlPhoto});
}

List<ItemCast> listItemCast = [
  ItemCast(
      name: "Kelly Marie Tran",
      character: "Raya (voice)",
      urlPhoto: "assets/image/ps1.jpeg"),
  ItemCast(
      name: "Awkwafina",
      character: "Sisu (voice)",
      urlPhoto: "assets/image/ps2.jpeg"),
  ItemCast(
      name: "Izaac Wang",
      character: "Boun (voice)",
      urlPhoto: "assets/image/ps3.jpeg"),
  ItemCast(
      name: "Gemma Chan",
      character: "Namaari (voice)",
      urlPhoto: "assets/image/ps4.jpeg")
];
