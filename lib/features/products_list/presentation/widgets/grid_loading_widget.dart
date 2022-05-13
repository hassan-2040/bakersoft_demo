import 'package:flutter/material.dart';

class GridLoadingWidget extends StatefulWidget {
  const GridLoadingWidget({ Key? key }) : super(key: key);

  @override
  State<GridLoadingWidget> createState() => GridLoadingWidgetState();
}

class GridLoadingWidgetState extends State<GridLoadingWidget> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator(),
    );
  }
}