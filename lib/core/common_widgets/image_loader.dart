import 'package:flutter/material.dart';

class ImageLoader extends StatelessWidget {
  final String imageUrl;
  final double? height;
  final Widget placholder;
  const ImageLoader({
    required this.imageUrl,
    this.placholder = const Center(
      child: SizedBox(
        child: CircularProgressIndicator(),
      ),
    ),
    this.height,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.network(
      imageUrl,
      height: height,
      width: double.infinity,
      fit: BoxFit.cover,
      frameBuilder: (
        BuildContext context,
        Widget image,
        int? frame,
        bool wasSynchronouslyLoaded,
      ) {
        if (wasSynchronouslyLoaded) return image;
        return AnimatedOpacity(
          duration: const Duration(milliseconds: 500),
          opacity: frame == null ? 0 : 1,
          child: image,
        );
      },
      loadingBuilder: (
        BuildContext context,
        Widget image,
        ImageChunkEvent? loadingProgress,
      ) {
        if (loadingProgress == null ||
            (loadingProgress.expectedTotalBytes != null &&
                loadingProgress.cumulativeBytesLoaded /
                        loadingProgress.expectedTotalBytes! ==
                    1)) {
          return image;
        }
        return placholder;
      },
      errorBuilder:
          (BuildContext context, Object exception, StackTrace? stackTrace) {
        return Text(
          'Could not load image: ${exception.toString()}',
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontSize: 8,
          ),
        );
      },
    );
  }
}
