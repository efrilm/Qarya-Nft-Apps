import 'package:flutter/cupertino.dart';
import 'package:qarya_nft/shared/theme.dart';

class PageTitle extends StatelessWidget {
  final String text;
  final VoidCallback onTap;

  const PageTitle({
    Key? key,
    required this.text,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Text(
            text,
            style: blackTextStyle.copyWith(
              fontSize: 20,
              fontWeight: semiBold,
            ),
          ),
        ),
        GestureDetector(
          onTap: onTap,
          child: Text(
            'View All',
            style: purpleTextStyle.copyWith(
              fontSize: 16,
              fontWeight: semiBold,
            ),
          ),
        ),
      ],
    );
  }
}
