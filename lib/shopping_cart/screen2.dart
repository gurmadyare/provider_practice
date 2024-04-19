import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_practice/shopping_cart/cartItems.dart';
import 'package:provider_practice/shopping_cart/screen1.dart';

class ShoppingCartScreen2 extends StatelessWidget {
  const ShoppingCartScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 45),
        child: Column(
          children: [
            //header
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.shopping_cart_checkout_rounded, size: 30),
                //
                SizedBox(width: 30),
                //
                Text(
                  "Shopping cart",
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.w500),
                ),
              ],
            ),

            //divider
            Container(
              margin: const EdgeInsets.all(20),
              height: 3,
              width: double.maxFinite,
              color: Colors.grey,
            ),
            const SizedBox(height: 120),

            //body

            //Add to cart
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(width: 30),
                //item no
                Consumer<CartItems>(builder: (context, cart, child) {
                  return Text(
                    "${cart.cartItems}",
                    style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
                    ),
                  );
                }),
                const SizedBox(width: 30),

                //increment
                IconButton(
                    onPressed: () {
                      Provider.of<CartItems>(context, listen: false)
                          .decrement();
                    },
                    style: IconButton.styleFrom(backgroundColor: Colors.orange),
                    icon: const Icon(
                      Icons.minimize,
                      color: Colors.black,
                    ))
              ],
            ),
            const SizedBox(height: 100),

            //total
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: SizedBox(
                  width: double.maxFinite,
                  child: Consumer<CartItems>(
                    builder: (context, cart, child) {
                      return Text(
                        "Total items in cart: ${cart.cartItems}",
                        style: const TextStyle(
                          fontSize: 24,
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                        ),
                      );
                    },
                  )),
            ),

            const SizedBox(height: 100),
            //go to the next page
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const ShoppingCartScreen1();
                }));
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange,
                  foregroundColor: Colors.white),
              child: const Text(
                "Back to the first page",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
