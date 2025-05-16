import 'package:flutter/material.dart';

class ContentSlider extends StatefulWidget {
  @override
  _ContentSliderState createState() => _ContentSliderState();
}

class _ContentSliderState extends State<ContentSlider> {
  final PageController _controller = PageController();
  int _currentPage = 0;

  final List<String> images = [
    'assets/images/prensyatayy.webp',
    'assets/images/lotryatay.webp',
    'assets/images/prensyatayy.webp',
    'assets/images/prensyatayy.webp',
    'assets/images/prensyatayy.webp',
  ];
    final List<String> text = [
    'assets/images/prenstext.webp',
    'assets/images/lotrtext.webp',
    'assets/images/prenstext.webp',
    'assets/images/prenstext.webp',
    'assets/images/prenstext.webp',
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 250,
          child: PageView.builder(
            controller: _controller,
            itemCount: images.length,
            onPageChanged: (index) {
              setState(() {
                _currentPage = index;
              });
            },
            itemBuilder: (context, index) {
              return Stack(
                children: [
                  Image.asset(
                    images[index],
                    fit: BoxFit.cover,
                    width: double.infinity,
                    height: double.infinity,
                  ),
                 Positioned(
  top: 2,
  left: 8,
  child: Stack(
    alignment: Alignment.center,
    children: [
      Image.asset(
        text[index],
        width: 250,
        height: 250,
      ),
      Positioned(
        bottom: 60,
        left: 70,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(
              'assets/images/+13.webp', // Küçük resim içinde gösterilecek daha küçük resim
              width: 15,
              height: 15,
            ),
            SizedBox(width: 2,),
            Image.asset(
              'assets/images/icon2.webp', // Küçük resim içinde gösterilecek daha küçük resim
              width: 15,
              height: 15,),
               SizedBox(width: 4,),
            Text("3 Sezon",style: TextStyle(color: Colors.white,fontSize: 14),)
          ],
        ),
      ),
    ],
  ),
),

                ],
              );
            },
          ),
        ),
        SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(images.length, (index) {
            return AnimatedContainer(
              duration: Duration(milliseconds: 300),
              margin: EdgeInsets.symmetric(horizontal: 4),
              width: 8,
              height: 8,
              decoration: BoxDecoration(
                color: _currentPage == index ? Colors.white : Colors.grey,
                shape: BoxShape.circle,
              ),
            );
          }),
        )
      ],
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
