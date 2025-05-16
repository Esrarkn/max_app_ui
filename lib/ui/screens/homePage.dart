import 'package:flutter/material.dart';
import 'package:max_ui/data/models/content.dart';
import 'package:max_ui/ui/widgets/appBar.dart';
import 'package:max_ui/ui/widgets/bottomNavbar.dart';
import 'package:max_ui/ui/widgets/contentSection.dart';
import 'package:max_ui/ui/widgets/contentSlider.dart';

class HomePage extends StatelessWidget {
  final List<Content> highlights = [
    Content( 'assets/images/prensposter.webp'),
    Content( 'assets/images/thelastofus.webp'),
    Content('assets/images/got.webp'),
    Content( 'assets/images/sopranos.webp'),
  ];

  final List<Content> welcomeToMax = [
    Content( 'assets/images/joker.webp'),
    Content( 'assets/images/friendsposter.webp'),
    Content( 'assets/images/lotr.png'),
    Content('assets/images/dune.webp'),
  ];
    final List<Content> forYou = [
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black54,
      extendBodyBehindAppBar: true,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: MaxAppBar(),
      ),
      bottomNavigationBar: CustomBottomNav(),
      body: 
      ListView(
        padding: EdgeInsets.zero,
        children: [
          ContentSlider(), 
          Padding(
            padding: const EdgeInsets.only(left: 8,right: 8),
            child: ContentSection(title: "Öne Çıkan Diziler", contents: highlights),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8,right: 8,top: 2,),
            child: ContentSection(title: "Max'e Hoş Geldin!", contents: welcomeToMax),
          ),
           Padding(
            padding: const EdgeInsets.only(left: 8,right: 8,top: 2,bottom: 8.0),
            child: ContentSection(title: "İzlemeye Devam Et", contents: forYou),
          ),
          
        ],
      ),
    );
  }
}
