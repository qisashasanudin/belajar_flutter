import 'package:flutter/material.dart';

class ImageCard extends StatelessWidget {
  const ImageCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAlias,
      child: Image.asset(
        "assets/allmylove.jpg",
        height: 300,
        width: 300,
        fit: BoxFit.cover,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.grey[900],
            blurRadius: 7,
            offset: Offset(0, 3),
          ),
        ],
      ),
    );
  }
}
