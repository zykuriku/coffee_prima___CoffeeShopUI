import 'package:coffee_prima/favorites.dart';
import 'package:flutter/material.dart';
import 'constants.dart';
import 'coffee.dart';
import 'package:coffee_prima/cart.dart';

class MenuPage extends StatefulWidget {
  late final String title;
  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  final GlobalKey<NavigatorState> _navigatorKey = GlobalKey<NavigatorState>();
  int currentTabIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: heavyColor,
      bottomNavigationBar: bottomNavigationBar(),
      appBar: AppBar(
        title: Text('Prima'),
        titleSpacing: 120.0,
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: buttonColor, width: 32.0),
                      borderRadius: BorderRadius.circular(25.0)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: buttonColor, width: 32.0),
                      borderRadius: BorderRadius.circular(25.0)),
                  hintText: 'Search your drink',
                  prefixIcon: Icon(Icons.coffee)),
            ),
          ),
          Text(
            'Popular',
            style: TextStyle(color: boldText, fontSize: 20.0),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 20),
            height: 250,
            child: ListView(
              // This next line does the trick.
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    color: buttonColor,
                    width: 170,
                    child: Column(
                      children: [
                        Image.asset(
                          'images/americano.jpg',
                          height: 129,
                        ),
                        TextButton(
                            onPressed: () => {},
                            child: Text(
                              'Iced Americano',
                              style: text,
                            )),
                        Text(
                          '₹220',
                          style: text,
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    color: buttonColor,
                    width: 170,
                    child: Column(
                      children: [
                        Image.asset(
                          'images/Capuccino.jpg',
                        ),
                        TextButton(
                            onPressed: () => {},
                            child: Text(
                              'Cappuccino',
                              style: text,
                            )),
                        Text(
                          '₹420',
                          style: text,
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    color: buttonColor,
                    width: 190,
                    child: Column(
                      children: [
                        Image.asset('images/americano.jpg'),
                        TextButton(
                            onPressed: () => {},
                            child: Text(
                              'Iced Americano',
                              style: text,
                            )),
                        Text(
                          '₹220',
                          style: text,
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    color: buttonColor,
                    width: 190,
                    child: Column(
                      children: [
                        Image.asset('images/americano.jpg'),
                        TextButton(
                            onPressed: () => {},
                            child: Text(
                              'Iced Americano',
                              style: text,
                            )),
                        Text(
                          '₹220',
                          style: text,
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    color: buttonColor,
                    width: 190,
                    child: Column(
                      children: [
                        Image.asset('images/americano.jpg'),
                        TextButton(
                            onPressed: () => {},
                            child: Text(
                              'Iced Americano',
                              style: text,
                            )),
                        Text(
                          '₹220',
                          style: text,
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    color: buttonColor,
                    width: 190,
                    child: Column(
                      children: [
                        Image.asset('images/americano.jpg'),
                        TextButton(
                            onPressed: () => {},
                            child: Text(
                              'Iced Americano',
                              style: text,
                            )),
                        Text(
                          '₹220',
                          style: text,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget bottomNavigationBar() {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(
            Icons.home,
            color: buttonColor,
          ),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.favorite,
            color: buttonColor,
          ),
          label: 'Favorite(s)',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.shopping_cart,
            color: buttonColor,
          ),
          label: 'Cart',
        ),
      ],
      onTap: _onTap,
      currentIndex: currentTabIndex,
    );
  }

  _onTap(int tabIndex) {
    switch (tabIndex) {
      case 0:
        _navigatorKey.currentState?.pushReplacementNamed("Home");
        // print(tabIndex);
        MaterialPageRoute(builder: (context) => MenuPage());
        break;
      case 1:
        _navigatorKey.currentState?.pushReplacementNamed("Favorite(s)");
        // print(tabIndex);
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Favorites()));
        break;
      case 2:
        _navigatorKey.currentState?.pushReplacementNamed("Cart");
        // print(tabIndex);
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => Cart(
                      addedToCartCoffee: [],
                    )));
        break;
    }
    setState(() {
      currentTabIndex = tabIndex;
    });
  }

  Object generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case "Favorite(s)":
        return Navigator.push(
            context, MaterialPageRoute(builder: (context) => Favorites()));
      case "Cart":
        return MaterialPageRoute(
            builder: (context) => Cart(
                  addedToCartCoffee: [],
                ));
      default:
        return MaterialPageRoute(builder: (context) => MenuPage());
    }
  }
}
