import 'dart:async';

import 'package:flutter/material.dart';

class CustomOpacityAnimation extends StatefulWidget {
  final Widget child;
  const CustomOpacityAnimation({
    required this.child,
    Key? key,
  }) : super(key: key);

  @override
  State<CustomOpacityAnimation> createState() => CustomOpacityAnimationState();
}

class CustomOpacityAnimationState extends State<CustomOpacityAnimation> {
  bool _visible = false;
  late Timer timer;

  @override
  void initState() {
    super.initState();
    timer = Timer.periodic(const Duration(milliseconds: 500), (Timer t) {
      _callSetState();
    });
  }

  @override
  void dispose() {
    timer.cancel();
    super.dispose();
  }

  void _callSetState() {
    setState(() {
      _visible = !_visible;
    });
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
      opacity: _visible ? 1.0 : 0.1,
      duration: const Duration(milliseconds: 500),
      child: widget.child,
    );
  }
}
