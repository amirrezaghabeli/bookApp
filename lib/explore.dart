import 'package:bookapp/book.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ExploreScreen extends StatefulWidget {
  const ExploreScreen({super.key});

  @override
  State<ExploreScreen> createState() => _ExploreScreenState();
}

List categoryList = [
  'Arts',
  'Biography',
  'Romance',
  'Thriller',
  'Fiction',
  'Crime',
  'Movies',
  'Religious',
];

class _ExploreScreenState extends State<ExploreScreen> {
  int activeIndex = 0;
  int activeListIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Image.asset('assets/icons/heroicons-solid_menu-alt-2.png'),
        actions: [
          Center(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 17),
              width: 212,
              height: 36,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: const Color(0xFFF6F5FA),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Image.asset('assets/icons/ri_search-line.png'),
                ],
              ),
            ),
          ),
          Image.asset('assets/icons/fluent_scan-dash-28-filled.png'),
          Image.asset('assets/icons/mdi_bell-notification.png'),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CarouselSlider(
            items: [
              Stack(
                children: [
                  Image.asset('assets/images/bookslide.png'),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0, top: 14),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          '''Find out the best books to read
when you don’t even know what 
to read!!!''',
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: Colors.white),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Container(
                          width: 62,
                          height: 26,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.white,
                          ),
                          child: const Center(
                            child: Text(
                              'Explore',
                              style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xFFF89182)),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Stack(
                children: [
                  Image.asset('assets/images/bookslide.png'),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0, top: 14),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          '''Find out the best books to read
when you don’t even know what 
to read!!!''',
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: Colors.white),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Container(
                          width: 62,
                          height: 26,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.white,
                          ),
                          child: const Center(
                            child: Text(
                              'Explore',
                              style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xFFF89182)),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Stack(
                children: [
                  Image.asset('assets/images/bookslide.png'),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0, top: 14),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          '''Find out the best books to read
when you don’t even know what 
to read!!!''',
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: Colors.white),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Container(
                          width: 62,
                          height: 26,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.white,
                          ),
                          child: const Center(
                            child: Text(
                              'Explore',
                              style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xFFF89182)),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
            options: CarouselOptions(
              viewportFraction: 1,
              aspectRatio: 2.2,
              onPageChanged: (index, reason) {
                setState(() {
                  activeIndex = index;
                });
              },
            ),
          ),
          Center(
            child: AnimatedSmoothIndicator(
              activeIndex: activeIndex,
              count: 3,
              effect: const ExpandingDotsEffect(
                activeDotColor: Color(0xFFE49527),
                dotWidth: 7,
                dotHeight: 7,
                dotColor: Color(0xFFD9D9D9),
                expansionFactor: 8,
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20.0, bottom: 5),
            child: Text(
              'Categories',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w800,
                  color: Color(0xFF165C73)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, bottom: 14),
            child: SizedBox(
              width: double.infinity,
              height: 16,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 8,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(left:8.0),
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          activeListIndex=index;
                        });
                      },
                      child: Stack(
                        children: [
                          SizedBox(
                            height: 14,
                            child: Center(
                              child: Text(
                                categoryList[index],
                                style: const TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xFF979797)),
                              ),
                            ),
                          ),
                        activeListIndex==index?  Positioned(
                            bottom: 0,
                            right: 0,
                            left: 0,
                            child: Container(
                              height: 2,
                              decoration: BoxDecoration(
                                color: const Color(0xFFE49527),
                                borderRadius: BorderRadius.circular(5),
                              ),
                            ),
                          ):const SizedBox()
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(24.0,0,24,24),
            child: GridView(
              shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                childAspectRatio: 0.6,
              ),
              children: [
                 InkWell(
                  onTap: () {
                     Navigator.of(context).push(MaterialPageRoute(builder:(context) {
                          return const BookScreen();
                        },));
                  },
                   child: const CategoriesItem(
                      imagePath: 'assets/images/mary.png',
                      title: '''The Story of Marie
Curie''',
                      subtitle: 'Susan R Katy'),
                 ),
                    const CategoriesItem(
                    imagePath: 'assets/images/muhammad.png',
                    title: '''At Home with 
Mohammed Ali''',
                    subtitle: 'Hana Alli'),
                    const CategoriesItem(
                    imagePath: 'assets/images/malcom.png',
                    title: '''Malcolm X''',
                    subtitle: 'Alex Haley'),
                    const CategoriesItem(
                    imagePath: 'assets/images/obama.png',
                    title: '''Becoming Michelle
Obama''',
                    subtitle: 'Michelle Obama'),
                    const CategoriesItem(
                    imagePath: 'assets/images/walt.png',
                    title: '''The Story of Walt 
Disney''',
                    subtitle: 'Susan B Katz'),
                    const CategoriesItem(
                    imagePath: 'assets/images/survivor.png',
                    title: '''The Happiest Man on
Earth''',
                    subtitle: 'Author Name'),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class CategoriesItem extends StatelessWidget {
  const CategoriesItem({
    Key? key,
    required this.title,
    required this.subtitle,
    required this.imagePath,
  }) : super(key: key);
  final String title;
  final String subtitle;
  final String imagePath;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(imagePath),
        Text(
          title,
          style: const TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.w600,
              color: Color(0xFF165C73)),
        ),
        Text(
          subtitle,
          style: const TextStyle(
              fontSize: 8,
              fontWeight: FontWeight.w600,
              color: Color(0xFF979797)),
        ),
        const SizedBox(
          height: 2,
        ),
        RatingBar.builder(
          initialRating: 3,
          minRating: 1,
          itemSize: 11,
          direction: Axis.horizontal,
          allowHalfRating: true,
          itemCount: 5,
          itemBuilder: (context, _) => const Icon(
            Icons.star,
            color: Colors.amber,
          ),
          onRatingUpdate: (rating) {},
        ),
      ],
    );
  }
}
