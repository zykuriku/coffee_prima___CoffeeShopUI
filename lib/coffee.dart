class Coffee {
  final int coffeeId;
  final int price;
  final String size;
  final double rating;
  final String coffeeName;
  final String imageURL;
  bool isFavorated;
  final String decription;
  bool isSelected;

  Coffee({
    required this.coffeeId,
    required this.price,
    required this.coffeeName,
    required this.size,
    required this.rating,
    required this.imageURL,
    required this.isFavorated,
    required this.decription,
    required this.isSelected,
  });

  static List<Coffee> coffeeList = [
    Coffee(
        coffeeId: 0,
        price: 120,
        coffeeName: 'Iced Americano',
        size: 'Small',
        rating: 4.5,
        imageURL: 'images/americano.jpg',
        isFavorated: true,
        decription:
            'Iced Americano is made by pouring cold water, over ice followed by shots of espresso. With manual pour over, the coffee drains directly onto the cold water and ice, so it chills during brewing.',
        isSelected: false),
    Coffee(
        coffeeId: 1,
        price: 900,
        coffeeName: 'Cappuccino',
        size: 'small',
        rating: 4,
        imageURL: 'images/Capuccino.jpg',
        isFavorated: true,
        decription:
            "A cappuccino is a popular espresso-based coffee drink. It's made with equal parts espresso, steamed milk, and milk foam. The drink is characterized by its airy, frothed milk topping.",
        isSelected: false),
    Coffee(
      coffeeId: 2,
      price: 220,
      coffeeName: 'Espresso',
      size: 'Medium',
      rating: 4.5,
      imageURL: 'images/espresso.jpg',
      isFavorated: true,
      decription:
          'Espresso is a concentrated form of coffee served in small, strong shots and is the base for many coffee drinks. It\'s made from the same beans as coffee but is stronger, thicker, and higher in caffeine.',
      isSelected: false,
    ),
    Coffee(
        coffeeId: 3,
        price: 500,
        coffeeName: 'Iced Frappe',
        size: 'Small',
        rating: 4.5,
        imageURL: 'images/frappe.jpg',
        isFavorated: true,
        decription:
            'This delicious drink is generally made of water, espresso, sugar, milk, ice and is shaken, blended or beaten to combine the ingredients.',
        isSelected: false),
    Coffee(
        coffeeId: 4,
        price: 720,
        coffeeName: 'Latte',
        size: 'Small',
        rating: 4.5,
        imageURL: 'images/Latte.jpg',
        isFavorated: true,
        decription:
            'A latte is a coffee drink made with espresso and steamed milk. The word "latte" is Italian for "milk". A latte is often made with one or two shots of espresso, steamed milk, and a thin layer of frothed milk on top.',
        isSelected: false),
    Coffee(
        coffeeId: 5,
        price: 350,
        coffeeName: 'Macchiato',
        size: 'Medium',
        rating: 4.5,
        imageURL: 'images/macchiato.png',
        isFavorated: true,
        decription:
            'The macchiato is an espresso coffee drink, topped with a small amount of foamed or steamed milk to allow the taste of the espresso to still shine through.',
        isSelected: false),
    Coffee(
        coffeeId: 6,
        price: 800,
        coffeeName: 'Ice Cream Mocha',
        size: 'Large',
        rating: 4.7,
        imageURL: 'images/white-chocolate-mocha.jpg',
        isFavorated: true,
        decription:
            'White mocha is where coffee meets white chocolate in a latte style drink that is indulgent and sweet yet deliciously rich in coffee flavour. ',
        isSelected: false),
    // Coffee(
    //     coffeeId: 7,
    //     price: 22,
    //     coffeeName: 'Sally',
    //     size: 'Small',
    //     rating: 4.5,
    //     imageURL: 'assets/images/persiancat.jpg',
    //     isFavorated: true,
    //     decription: 'This is a cute labrador.',
    //     isSelected: false),
    // Coffee(
    //     coffeeId: 8,
    //     price: 22
    //     coffeeName: 'Sally',
    //     size: 'Small',
    //     rating: 4.5,
    //     imageURL: 'assets/images/log1.png',
    //     isFavorated: true,
    //     decription: 'This is a cute labrador.',
    //     isSelected: false),
  ];

  static List<Coffee> getFavoritedCoffee() {
    List<Coffee> _coffeesList = Coffee.coffeeList;
    return _coffeesList
        .where((element) => element.isFavorated == true)
        .toList();
  }

  static List<Coffee> addedToCartCoffee() {
    List<Coffee> _selectedCoffee = Coffee.coffeeList;
    return _selectedCoffee
        .where((element) => element.isSelected == true)
        .toList();
  }
}
