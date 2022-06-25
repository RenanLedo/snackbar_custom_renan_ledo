import 'dart:ui';

import 'package:flutter/material.dart';

class GlassMorphism extends StatelessWidget {
  final Widget child;
  final double start;
  final double end;
  final Color color;
  const GlassMorphism({
    Key? key,
    required this.child,
    this.start = 0.6,
    this.end = 0.5,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 3, sigmaY: 3),
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                color.withOpacity(start),
                color.withOpacity(end),
              ],
              begin: AlignmentDirectional.topStart,
              end: AlignmentDirectional.bottomEnd,
            ),
            borderRadius: const BorderRadius.all(Radius.circular(10)),
            border: Border.all(
              width: 1.5,
              color: color.withOpacity(0.2),
            ),
          ),
          child: child,
        ),
      ),
    );
  }
}
