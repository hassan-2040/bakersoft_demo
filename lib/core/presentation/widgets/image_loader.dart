import 'package:bakersoft_demo/core/presentation/widgets/custom_opacity_animation.dart';
import 'package:bakersoft_demo/core/utilities/app_config.dart';
import 'package:flutter/material.dart';

class ImageLoader extends StatelessWidget {
  final String imageUrl;
  final double? height;
  final double placeHolderHeight;
  const ImageLoader({
    required this.imageUrl,
    required this.placeHolderHeight,
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
        return CustomOpacityAnimation(
          child: Container(
            height: placeHolderHeight,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        );
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
