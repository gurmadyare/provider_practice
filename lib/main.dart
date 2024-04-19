import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_practice/practice1/model/course.dart';
import 'package:provider_practice/shopping_cart/cartItems.dart';
import 'package:provider_practice/shopping_cart/screen1.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(create: (_) => ChangeCourse()),
    ChangeNotifierProvider(create: (_) => CartItems())
  ], child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const ShoppingCartScreen1(),
    );
  }
}
