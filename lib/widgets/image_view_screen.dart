import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ImageViewScreen extends StatelessWidget {
  final String imageAsset;
  final String? heroTag;

  const ImageViewScreen({
    super.key,
    required this.imageAsset,
    this.heroTag,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(
          icon: const Icon(CupertinoIcons.back, color: Colors.white),
          iconSize: 28,
          onPressed: () => Navigator.pop(context),
        ),
        elevation: 0,
      ),
      body: Center(
        child: Hero(
          tag: heroTag ?? imageAsset,
          child: InteractiveViewer(
            minScale: 0.5,
            maxScale: 5,
            child: Image.asset(
              imageAsset,
              fit: BoxFit.contain,
              errorBuilder: (_, __, ___) =>
                  const Icon(Icons.broken_image, color: Colors.white, size: 80),
            ),
          ),
        ),
      ),
    );
  }
}
