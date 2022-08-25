import 'package:flutter/material.dart';
import 'package:qarya_nft/shared/theme.dart';

class CardTile extends StatelessWidget {
  final String? name;
  final String? username;
  final String? imageUrl;
  const CardTile({Key? key, this.name, this.username, this.imageUrl})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      margin: const EdgeInsets.only(
        top: 16,
      ),
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        children: [
          Container(
            height: 56,
            width: 56,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              image: DecorationImage(
                image: AssetImage(imageUrl!),
              ),
            ),
          ),
          const SizedBox(
            width: 12,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name!,
                  style: blackTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: semiBold,
                  ),
                ),
                Text(
                  username!,
                  style: greyTextStyle,
                )
              ],
            ),
          ),
          Container(
            height: 24,
            width: 24,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/ic_arrow_right.png'),
              ),
            ),
          )
        ],
      ),
    );
  }
}
