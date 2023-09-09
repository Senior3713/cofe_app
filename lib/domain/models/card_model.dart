class CardModel {
  String type;
  String name;
  String desc;
  double price;
  String image;

  CardModel({
    required this.type,
    required this.name,
    required this.desc,
    required this.price,
    required this.image,
  });

  @override
  int get hashCode => Object.hash(type, name);

  @override
  bool operator ==(Object other) {
    return other is CardModel && other.type == type && other.name == name;
  }
}

List<CardModel> cardTradicionais = [
  CardModel(type: 'Tradicional', name: 'Expresso Tradicional', desc: 'O tradicional café feito com água quente e grãos moídos', price: 9.90, image: 'assets/images/expresso_traditional.png',),
  CardModel(type: 'Tradicional', name: 'Expresso Americano', desc: 'Expresso diluído, menos intenso que o tradicional', price: 9.90, image: 'assets/images/expresso_americano.png',),
  CardModel(type: 'Tradicional', name: 'Expresso Cremoso', desc: 'Café expresso tradicional com espuma cremosa', price: 9.90, image: 'assets/images/expresso_cremoso.png',),
  CardModel(type: 'Tradicional', name: 'Latte', desc: 'Café expresso com o dobro de leite e espuma cremosa', price: 9.90, image: 'assets/images/latte.png',),
  CardModel(type: 'Tradicional', name: 'Expresso Gelado', desc: 'Bebida preparada com café expresso e cubos de gelo', price: 9.90, image: 'assets/images/expresso_gelado.png',),
];

List<CardModel> cardDoces = [
  CardModel(type: 'Doces', name: 'Capuccino', desc: 'Bebida com canela feita de doses de café, leite e espuma', price: 9.90, image: 'assets/images/cappucino.png',),
  CardModel(type: 'Doces', name: 'Mocaccino', desc: 'Café expresso com calda de chocolate, pouco leite e espuma', price: 9.90, image: 'assets/images/moccacino.png',),
  CardModel(type: 'Doces', name: 'Chocolate Quente', desc: 'Bebida feita com chocolate dissolvido no leite quente e café', price: 9.90, image: 'assets/images/chocolate_quente.png',),
];

List<CardModel> cardEspeciais = [
  CardModel(type: 'Especiais', name: 'Cubano', desc: 'Drink gelado de café expresso com rum, creme de leite e hortelã', price: 9.90, image: 'assets/images/cubano.png',),
  CardModel(type: 'Especiais', name: 'Havaiano', desc: 'Bebida adocicada preparada com café e leite de coco', price: 9.90, image: 'assets/images/havaiano.png',),
  CardModel(type: 'Especiais', name: 'Árabe', desc: 'Bebida preparada com grãos de café árabe e especiarias', price: 9.90, image: 'assets/images/arabe.png',),
  CardModel(type: 'Especiais', name: 'Irlandês', desc: 'Bebida a base de café, uísque irlandês, açúcar e chantilly', price: 9.90, image: 'assets/images/irlandes.png',),
];