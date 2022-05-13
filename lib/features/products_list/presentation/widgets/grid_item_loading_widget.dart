import 'package:bakersoft_demo/core/presentation/widgets/custom_opacity_animation.dart';
import 'package:flutter/material.dart';

class GridItemLoadingWidget extends StatelessWidget {
  const GridItemLoadingWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomOpacityAnimation(
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.grey,
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
