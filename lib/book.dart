import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class BookScreen extends StatelessWidget {
  const BookScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      floatingActionButton: Container(
        width: 149,
        height: 35,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: const Color(0xFFE49527)),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Add to Cart',
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              const SizedBox(
                width: 10,
              ),
              Image.asset(
                'assets/icons/cart.png',
              )
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        titleSpacing: 34,
        title: const Icon(
          Icons.arrow_back_ios,
          color: Colors.black,
        ),
        actions: [
          Center(
            child: Container(
              width: 86,
              height: 26,
              decoration: BoxDecoration(
                  color: const Color(0xFF165C73),
                  borderRadius: BorderRadius.circular(5)),
              child: const Center(
                child: Text(
                  '+ Add to wishlist',
                  style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
          const SizedBox(
            width: 32,
          ),
        ],
      ),
      body: Stack(
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 21),
                child: Image.asset('assets/images/Rectangle 18.png'),
              ),
              const SizedBox(
                height: 22,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 28, right: 32),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset('assets/images/Ellipse 2.png'),
                    const SizedBox(
                      width: 12,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Dust Jacket',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF165C73),
                          ),
                        ),
                        const Text(
                          'By Pisco Pirinto',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        Row(
                          children: [
                            RatingBar.builder(
                              initialRating: 3,
                              minRating: 1,
                              itemSize: 16,
                              direction: Axis.horizontal,
                              allowHalfRating: true,
                              itemCount: 5,
                              itemPadding:
                                  const EdgeInsets.symmetric(horizontal: 4.0),
                              itemBuilder: (context, _) => const Icon(
                                Icons.star,
                                color: Colors.amber,
                              ),
                              onRatingUpdate: (rating) {},
                            ),
                            Text(
                              '| 1,500 Reads',
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.grey.shade200),
                            ),
                          ],
                        )
                      ],
                    ),
                    const Text(
                      '\$10.00',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: Color(0xFFE49527)),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 31,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 34.0, right: 34),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: const [
                    Text(
                      'About',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      'Reviews',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      'Author',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(
                      width: 16,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 4,
              ),
              Padding(
                padding:
                    const EdgeInsets.only(left: 34.0, right: 37, bottom: 17),
                child: Stack(
                  children: [
                    Container(
                      width: double.infinity,
                      height: 3,
                      decoration: BoxDecoration(
                          color: const Color(0xFFD9D9D9),
                          borderRadius: BorderRadius.circular(2)),
                    ),
                    Container(
                      width: 70,
                      height: 3,
                      decoration: BoxDecoration(
                          color: const Color(0xFFE49527),
                          borderRadius: BorderRadius.circular(2)),
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 34, right: 37),
                child: Text(
                  'Lorem ipsum dolor sit amet consectetur. Faucibus tellus bibendum egestas dui facilisis vitae porttitor. Tristique est ipsum proin vestibulum lacus orci. Non ipsum sapien velit vitae magna quam. Cursus tempor nulla imperdiet tortor habitant arcu. Eu venenatis diam facilisis eu leo pellentesque quam ullamcorper malesuada. Facilisis diam mattis justo vel feugiat sagittis tortor urna. Arcu aliquam pellentesque lorem elit neque gravida. Bibendum bibendum feugiat facilisi viverra vitae tortor scelerisque facilisis orci.',
                  style: TextStyle(
                      height: 2,
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF979797)),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 540.0),
            child: Container(
              width: double.infinity,
              height: 108,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [Colors.white.withOpacity(0.58), Colors.white])),
              child: Center(
                child: Container(
                  width: 149,
                  height: 35,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: const Color(0xFFE49527)),
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'Add to Cart',
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Image.asset(
                          'assets/icons/cart.png',
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
