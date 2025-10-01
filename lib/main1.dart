import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: ListView(
          children: [
            CustomWidget(
              description: 'Samsung Phone, 2 GB RAM',
              item: 'Mobile Phone',
              price: 1000,
              image: 'assets/images/twitter.png',
            ),
            CustomWidget(
              item: 'LapTop',
              price: 20000,
              image: 'assets/im/fish.png',
              description: 'VIVO Phone, 4 GB RAM',
            ),
            CustomWidget(
              item: 'Pen Drive',
              price: 200,
              image: 'assets/images/cogwheel.png',
              description: 'OPPO Phone, 2 GB RAM',
            ),
            CustomWidget(
              item: 'Mobile Phone',
              price: 1000,
              description: 'SAMSUNG Phone, 2 GB RAM',
              image: 'assets/images/twitter.png',
            ),
            
          ],
        ),
      ),
    );
  }
}
class CustomWidget extends StatelessWidget {
  final String item;
  final String image;
  final int price;
  final String description;

  @required
  const CustomWidget({
    super.key,
    this.item = '',
    this.image = '',
    this.price = 0,
    this.description = '',
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(5.0),
          child: Row(
            children: [
              Container(
                height: 100,
                width: 100,
                color: Colors.amber,
                child: Image.asset(image),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Item Name : $item',
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 20,
                      ),
                    ),
                    Text(
                      'Description : $description',
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 10,
                      ),
                    ),
                    Text(
                      'Price : $price',
                      style: TextStyle(
                        color: Colors.green,
                        fontSize: 20,
                      ),
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.green,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}