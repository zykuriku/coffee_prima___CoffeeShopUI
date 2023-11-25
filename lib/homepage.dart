import 'package:flutter/material.dart';
import 'constants.dart';
import 'menu.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/bg.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        constraints: BoxConstraints.expand(),
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Sure, feels',
                    style: TextStyle(color: Colors.white, fontSize: 40.0),
                  ),
                  Text(
                    'like a coffee',
                    style: TextStyle(color: Colors.white, fontSize: 30.0),
                  ),
                  Text(
                    'day!',
                    style: TextStyle(color: Colors.white, fontSize: 25.0),
                  ),
                ],
              ),
              SizedBox(
                height: 80.0,
              ),
              TextButton(
                  onPressed: () => {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => MenuPage()))
                      },
                  style: TextButton.styleFrom(
                      backgroundColor: buttonColor,
                      shadowColor: Colors.brown.shade900),
                  child: const Text(
                    'Let\'s get prima coffee!',
                    style: text,
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
