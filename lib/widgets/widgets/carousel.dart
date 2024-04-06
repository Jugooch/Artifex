import 'package:artifex/styling.dart';
import 'package:artifex/widgets/pages/news.dart';
import 'package:flutter/material.dart';

class Carousel extends StatefulWidget {
  @override
  _CarouselState createState() => _CarouselState();
}

class _CarouselState extends State<Carousel> {
  final PageController _pageController = PageController(viewportFraction: 0.8, initialPage: 2);
  int _currentPage = 2;

  List<Map<String, String>> _items = [
    {
      'image': 'https://source.unsplash.com/random/?city',
      'text': 'Item 1',
    },
    {
      'image': 'https://source.unsplash.com/random/?person',
      'text': 'Item 2',
    },
    {
      'image': 'https://source.unsplash.com/random/?tech',
      'text': 'Item 3',
    },
    {
      'image': 'https://source.unsplash.com/random/?crypto',
      'text': 'Item 4',
    },
    {
      'image': 'https://source.unsplash.com/random/?google',
      'text': 'Item 5',
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 200,
          child: PageView.builder(
              controller: _pageController,
              itemCount: _items.length,
              itemBuilder: (context, index) {
                return _buildCarouselItem(context, index);
              },
              onPageChanged: (index) {
                setState(() {
                  _currentPage = index;
                });
              }),
        ),
        SizedBox(height: 32),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(_items.length, (index) => _buildDot(index)),
        ),
      ],
    );
  }

  Widget _buildCarouselItem(BuildContext context, int index) {
    var item = _items[index];
    return AnimatedBuilder(
        animation: _pageController,
        builder: (context, child) {
          double value = 1;
          if (_pageController.position.haveDimensions) {
            value = _pageController.page! - index;
            value = (1 - (value.abs() * .25)).clamp(0.8, 1.0);
          }
          return InkWell( 
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => News(item['text']!, item['image']!)));
            },
            child: Container(
            margin: EdgeInsets.symmetric(horizontal: 8),
            child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(item['image']!),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
              SizedBox(height: 16),
              Text(item['text']!, style: AppStyles.header1),
            ],
          )));
        });
  }

  Widget _buildDot(int index) {
    return GestureDetector(
      onTap: () => _pageController.animateToPage(
        index,
        duration: Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      ),
      child: Container(
        height: 16,
        width: 16,
        margin: EdgeInsets.symmetric(horizontal: 5),
        decoration: BoxDecoration(
          color: _currentPage == index ? Colors.white : AppColors.activeIcon,
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}
