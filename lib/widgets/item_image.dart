import 'package:flutter/material.dart';

class ItemImage extends StatelessWidget {
  final String imageAsset;
  ItemImage({this.imageAsset});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      imageAsset,
      width: 80,
      height: 80,
    );
  }
}
