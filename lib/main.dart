import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_management/cart_model.dart';

void main() => runApp(ChangeNotifierProvider(
    create: (context) => CartModel(), child: const MyApp()));

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: priceText);
  }
}

Widget priceText = Consumer<CartModel>(builder: (context, cart, child) {
  return GestureDetector(
      onTap: () {
        print("Tap detected");
        cart.add("Jack Squat");
      },
      child: ListView(
          children: cart.items.map((item) => Text("Item: $item")).toList()));
});
