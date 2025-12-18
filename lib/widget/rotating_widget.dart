import 'dart:math' as math;
import 'package:flutter/material.dart';

class RotatingWidget extends StatefulWidget {
  const RotatingWidget({super.key , required this.child});
  final Widget child;
  @override
  _RotatingWidgetState createState() => _RotatingWidgetState();
}

class _RotatingWidgetState extends State<RotatingWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 10),
      vsync: this,
    )..repeat(); // Repeats the animation forever
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return RotationTransition(
      turns: _controller, // The animation controller drives the rotation
      child: widget.child
    );
  }
}
