import 'package:flutter/material.dart';
import 'package:shushman/views/product_detail_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    const defaultPadding = EdgeInsets.symmetric(horizontal: 20.0);
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //appbar
              Padding(
                padding: defaultPadding,
                child: Row(
                  children: [
                    const Icon(Icons.menu),
                    const Spacer(),
                    Icon(
                      Icons.location_on,
                      color: Theme.of(context).colorScheme.secondary,
                    ),
                    const Text("Abuja, Nigeria"),
                    const Spacer(),
                    const CircleAvatar(
                      backgroundColor: Colors.transparent,
                      backgroundImage: AssetImage("assets/Image.png"),
                    )
                  ],
                ),
              ),

              const SizedBox(height: 30),

              //promo card
              Container(
                margin: defaultPadding,
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.secondary,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      offset: const Offset(0, 2.3),
                      color: Colors.grey.shade400,
                      blurRadius: 1,
                      spreadRadius: 1,
                    ),
                  ],
                ),
                child: Row(
                  children: [
                    //text and btn
                    Padding(
                      padding: const EdgeInsets.all(16).copyWith(left: 40),
                      child: Column(
                        children: [
                          Text(
                            'Get 32% Promo',
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Container(
                            padding: const EdgeInsets.symmetric(
                                vertical: 8, horizontal: 25),
                            decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.3),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Text(
                              "Buy Food",
                              style: Theme.of(context).textTheme.titleMedium,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Spacer(),
                    Image.asset(
                      'assets/Pasted Graphic.png',
                      scale: 2.9,
                    ),
                  ],
                ),
              ),

              //search field
              Container(
                margin: defaultPadding.copyWith(top: 30, bottom: 30),
                padding:
                    const EdgeInsets.symmetric(vertical: 5).copyWith(left: 30),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: Colors.white,
                ),
                child: const Row(
                  children: [
                    Icon(
                      Icons.search,
                      color: Colors.grey,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Flexible(
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Search here',
                          hintStyle: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              //menu listview
              SizedBox(
                height: 45,
                child: ListView.builder(
                    itemCount: 5,
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    padding: const EdgeInsets.only(left: 20),
                    itemBuilder: (context, index) {
                      return Container(
                        margin: const EdgeInsets.only(right: 20),
                        padding: const EdgeInsets.symmetric(
                            vertical: 5, horizontal: 10),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Row(
                          children: [
                            Image.asset('assets/menu ${index + 1}.png'),
                            const Text("Ramen"),
                          ],
                        ),
                      );
                    }),
              ),
              const SizedBox(height: 30),

              //products listview
              SizedBox(
                height: 200,
                child: ListView.builder(
                    itemCount: 3,
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    padding: const EdgeInsets.only(left: 20),
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0).copyWith(left: 0),
                        child: Stack(
                          alignment: Alignment.topRight,
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        const ProductDetailPage(),
                                  ),
                                );
                              },
                              child: Container(
                                width: 150,
                                margin: const EdgeInsets.only(right: 20),
                                padding: const EdgeInsets.symmetric(
                                    vertical: 5, horizontal: 10),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(16),
                                    boxShadow: [
                                      BoxShadow(
                                        offset: const Offset(2, 2.5),
                                        color: Colors.grey.shade400,
                                        spreadRadius: 1,
                                        blurRadius: 1,
                                      ),
                                    ]),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Align(
                                      alignment: Alignment.center,
                                      child: Hero(
                                        tag: 'product $index',
                                        child: Image.asset(
                                          'assets/order ${index + 1}.png',
                                          height: 100,
                                        ),
                                      ),
                                    ),
                                    const Text("Ramen"),
                                    const SizedBox(height: 10),
                                    const Row(
                                      children: [
                                        Text("\$ 20.00"),
                                        Spacer(),
                                        Icon(
                                          Icons.star,
                                          color: Colors.yellow,
                                        ),
                                        Text("4.8"),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Positioned(
                              right: 20,
                              child: IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.favorite_outline,
                                  color: Colors.grey,
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    }),
              ),
              const SizedBox(height: 40),

              const Padding(
                padding: defaultPadding,
                child: Text(
                  "Popular Food",
                  style: TextStyle(
                    fontSize: 21,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              const SizedBox(height: 20),

              //popular food tile
              Stack(
                alignment: Alignment.topRight,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    margin: defaultPadding,
                    padding:
                        const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(16),
                        boxShadow: [
                          BoxShadow(
                            offset: const Offset(3, 3),
                            color: Colors.grey.shade400,
                            spreadRadius: 1,
                            blurRadius: 1,
                          ),
                        ]),
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/order 3.png',
                          height: 100,
                          width: 100,
                        ),
                        const Flexible(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Ramen"),
                              SizedBox(height: 10),
                              Padding(
                                padding: EdgeInsets.only(right: 40.0),
                                child: Row(
                                  children: [
                                    Text("\$ 20.00"),
                                    Spacer(),
                                    Icon(
                                      Icons.star,
                                      color: Colors.yellow,
                                    ),
                                    Text("4.8"),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    right: 20,
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.favorite_outline,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
