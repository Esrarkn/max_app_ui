import 'package:flutter/material.dart';

class CustomBottomNav extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  NavigationBar(
  height: 50,  // yükseklik ayarlanabiliyor
  backgroundColor: Colors.black54,
  indicatorColor: Colors.transparent,
  destinations: [
    NavigationDestination(icon: Icon(Icons.home_filled,size: 23,color: Colors.white,), label: ''),
    NavigationDestination(icon: Image.asset("assets/images/saveicon.webp",height: 22,width: 22,), label: ''),
    NavigationDestination(icon: Image.asset("assets/images/searchicon.webp",height: 22,width: 22,), label: ''),
  ],
);

  }
}
