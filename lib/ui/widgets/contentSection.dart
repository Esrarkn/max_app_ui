import 'package:flutter/material.dart';
import 'package:max_ui/data/models/content.dart';

class ContentSection extends StatelessWidget {
  final String title;
  final List<Content> contents;

  const ContentSection({required this.title, required this.contents});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Text(title, style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500,color: Colors.white)),
        ),
        SizedBox(
          height: 145,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: contents.length,
            itemBuilder: (context, index) {
              return Container(
                width: 110,
                height: 145,
                margin: EdgeInsets.symmetric(horizontal: 8),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(2),
                  child: Image.asset(contents[index].imagePath, fit: BoxFit.cover),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
