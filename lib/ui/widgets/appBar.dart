import 'package:flutter/material.dart';

class MaxAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      flexibleSpace: Padding(
        padding: const EdgeInsets.only(top: 25.0, left: 16, right: 16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              "assets/images/maxlogo.png",
              height: 22,
            ),
            Row(
              children: [
                Icon(Icons.notifications_none_sharp,size: 25,color: Colors.white,),
                SizedBox(width: 16),
                CircleAvatar(
                  radius: 12, 
                  backgroundImage: AssetImage("assets/images/personicon.webp"),
                  backgroundColor: const Color.fromARGB(65, 0, 0, 0),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
