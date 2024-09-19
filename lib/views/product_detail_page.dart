import 'package:flutter/material.dart';

class ProductDetailPage extends StatelessWidget {
  const ProductDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    const defaultPadding = EdgeInsets.symmetric(horizontal: 20.0);
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height,
          ),
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/Pasted Graphic 11.png'),
                fit: BoxFit.cover,
              ),
            ),
            height: 500,
            width: MediaQuery.of(context).size.width,
          ),
          SafeArea(
            child: Column(
              children: [
                //back and like buttons
                Padding(
                  padding: defaultPadding,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: const Icon(
                          Icons.arrow_back_ios_new_rounded,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.favorite_outline,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
