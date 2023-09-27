import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class PartnerCarousel extends StatefulWidget {
  const PartnerCarousel({super.key});

  @override
  State<PartnerCarousel> createState() => _PartnerCarouselState();
}

class _PartnerCarouselState extends State<PartnerCarousel> {
  int activeIndex = 0;
  final urlImages = [
    'https://www.miraclefoundation.org/wp-content/uploads/2018/04/Guidestar-Platinum-2018.png',
    'https://www.miraclefoundation.org/wp-content/uploads/2018/04/GreatNonprofits-Top-Rated-Nonprofit.png',
    'https://www.miraclefoundation.org/wp-content/uploads/2018/04/Charity-Navigator-4-Star-Charity-150x150.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 150,
          width: double.infinity,
          child: CarouselSlider.builder(
              itemCount: urlImages.length,
              itemBuilder: ((context, index, realIndex) {
                final urlImage = urlImages[index];
                return buildImage(urlImage, index);
              }),
              options: CarouselOptions(
                viewportFraction: 0.3,
                autoPlay: false,
                autoPlayInterval: const Duration(seconds: 4),
                onPageChanged: (index, reason) {
                  setState(() {
                    activeIndex = index;
                  });
                },
              )),
        ),
        const SizedBox(
          height: 2.5,
        ),
        buildIndicator(),
      ],
    );
  }

  Widget buildImage(String urlImage, int index) {
    return Container(
      margin: const EdgeInsets.all(0.5),
      child: Image.network(urlImage),
    );
  }

  Widget buildIndicator() {
    return AnimatedSmoothIndicator(
      effect: const JumpingDotEffect(
        dotHeight: 5,
        dotWidth: 5,
        spacing: 5,
        activeDotColor: Colors.orange,
      ),
      activeIndex: activeIndex,
      count: urlImages.length,
    );
  }
}
