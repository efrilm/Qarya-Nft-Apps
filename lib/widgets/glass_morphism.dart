import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:qarya_nft/shared/theme.dart';

class GlassMorphism extends StatelessWidget {
  final Widget child;
  final double height;
  final double width;
  const GlassMorphism({
    Key? key,
    required this.child,
    this.height = 33,
    this.width = 99,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(100),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 8, sigmaY: 8),
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(
                width: 1,
                color: whiteColor,
              ),
              color: Colors.white.withOpacity(0.2),
              borderRadius: BorderRadius.circular(100),
            ),
            child: child,
          ),
        ),
      ),
    );
  }
}
