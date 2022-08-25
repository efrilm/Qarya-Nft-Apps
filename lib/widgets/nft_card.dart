import 'package:flutter/material.dart';
import 'package:qarya_nft/shared/theme.dart';
import 'package:qarya_nft/widgets/glass_morphism.dart';
import 'package:qarya_nft/widgets/small_button.dart';

class NftCard extends StatelessWidget {
  final String name;
  final String username;
  final String nftImage;
  final String profileImage;
  final String timer;

  const NftCard(
      {Key? key,
      required this.name,
      required this.username,
      required this.nftImage,
      required this.profileImage,
      required this.timer})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 276,
      margin: const EdgeInsets.only(
        right: 16,
      ),
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: BorderRadius.circular(24),
      ),
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, '/detail');
            },
            child: Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: 183,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(24),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(nftImage),
                    ),
                  ),
                ),
                Positioned(
                  left: 84,
                  right: 84,
                  bottom: 16,
                  child: GlassMorphism(
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        timer,
                        style: whiteTextStyle.copyWith(
                          fontWeight: semiBold,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          Row(
            children: [
              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(profileImage),
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
                      name,
                      style: blackTextStyle.copyWith(
                        fontSize: 16,
                        fontWeight: semiBold,
                      ),
                    ),
                    Text(
                      username,
                      style: greyTextStyle,
                    ),
                  ],
                ),
              ),
              SmallButton(
                text: 'Bid',
                onTap: () {},
              )
            ],
          )
        ],
      ),
    );
  }
}
