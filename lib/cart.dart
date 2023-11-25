import 'package:flutter/material.dart';
import 'coffee.dart';
import 'constants.dart';

class Cart extends StatefulWidget {
  final List<Coffee> addedToCartCoffee;
  const Cart({Key? key, required this.addedToCartCoffee}) : super(key: key);

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: heavyColor,
      body: widget.addedToCartCoffee.isEmpty
          ? const Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 100,
                    child: Icon(Icons.shopping_cart),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Your Cart is Empty',
                    style: TextStyle(
                      color: boldText,
                      fontWeight: FontWeight.w300,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
            )
          : Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 30),
              height: size.height,
              child: Column(
                children: [
                  // Expanded(
                  //   child: ListView.builder(
                  //       itemCount: widget.addedToCartCoffee.length,
                  //       scrollDirection: Axis.vertical,
                  //       physics: const BouncingScrollPhysics(),
                  //       itemBuilder: (BuildContext context, int index) {
                  //         return CoffeeWidget(
                  //             index: index, petList: widget.addedToCartCoffee);
                  //       }),
                  // ),
                  const Column(
                    children: [
                      Divider(
                        thickness: 1.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Total Amount',
                            style: TextStyle(
                              fontSize: 23,
                              fontWeight: FontWeight.w300,
                              color: boldText,
                            ),
                          ),
                          Text(
                            r'₹5409',
                            style: TextStyle(
                              fontSize: 24.0,
                              color: boldText,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
    );
  }
}
