import 'package:flutter/material.dart';
import 'package:qarya_nft/shared/theme.dart';

class SmallButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;

  const SmallButton({
    Key? key,
    required this.text,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 29,
        width: 66,
        padding: const EdgeInsets.symmetric(
          vertical: 4,
          horizontal: 22,
        ),
        decoration: BoxDecoration(
          color: purpleColor,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Text(
          text,
          style: whiteTextStyle,
        ),
      ),
    );
  }
}
