class Itens{
  final String name;
  final String secondName;
  final String photo;
  final String description;
  final String price;
  final String portion;
  bool isFavorite;

  Itens({
    required this.name,
    required this.secondName,
    required this.photo,
    required this.description,
    required this.price,
    required this.portion,
    this.isFavorite = false,
  });
 
}