import 'package:flutter/material.dart';
import 'package:qarya_nft/shared/theme.dart';
import 'package:qarya_nft/widgets/card_tile.dart';
import 'package:qarya_nft/widgets/glass_morphism.dart';
import 'package:qarya_nft/widgets/nft_card.dart';
import 'package:qarya_nft/widgets/page_title.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            height: 136,
            color: navyColor,
            padding: EdgeInsets.only(
              top: defaultMargin,
              left: defaultMargin,
              right: defaultMargin,
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              top: defaultMargin,
              right: defaultMargin,
              left: defaultMargin,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 50,
                  width: 50,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage('assets/profile.png'),
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
                        'Welcome',
                        style: greyTextStyle2.copyWith(
                          fontSize: 16,
                        ),
                      ),
                      Text(
                        'Reyna Botfrag',
                        style: whiteTextStyle.copyWith(
                          fontSize: 18,
                          fontWeight: medium,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 28,
                  width: 24,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/ic_notification.png'),
                    ),
                  ),
                )
              ],
            ),
          ),
          Positioned(
            right: 0,
            left: 0,
            bottom: -26,
            child: Container(
              height: 56,
              decoration: BoxDecoration(
                color: whiteColor,
                borderRadius: BorderRadius.circular(12),
              ),
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
              ),
              alignment: Alignment.center,
              margin: EdgeInsets.symmetric(horizontal: defaultMargin),
              child: Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: 'Search product...',
                        border: InputBorder.none,
                        hintStyle: placeholderTextStyle.copyWith(
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 24,
                    width: 24,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          'assets/ic_search.png',
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      );
    }

    Widget popular() {
      return Container(
        margin: EdgeInsets.only(
          left: defaultMargin,
          top: 48,
        ),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(
                right: defaultMargin,
              ),
              child: PageTitle(
                text: 'Popular NFT🔥',
                onTap: () {},
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: const [
                  NftCard(
                    name: 'Blinded Bird',
                    username: '@witteackerman',
                    nftImage: 'assets/nft1.png',
                    profileImage: 'assets/profile1.png',
                    timer: '2d:9h:22s',
                  ),
                  NftCard(
                    name: 'Mighty Gaming',
                    username: '@papoybanana',
                    nftImage: 'assets/nft2.png',
                    profileImage: 'assets/profile2.png',
                    timer: '2d:9h:22s',
                  ),
                ],
              ),
            )
          ],
        ),
      );
    }

    Widget bestSeller() {
      return Container(
        margin: EdgeInsets.only(
          top: defaultMargin,
          left: defaultMargin,
          right: defaultMargin,
        ),
        child: Column(
          children: [
            PageTitle(
              text: 'Best Seller 😍',
              onTap: () {},
            ),
            const CardTile(
              name: 'Yew and Ying',
              username: '@chamberusoded',
              imageUrl: 'assets/best_seller2.png',
            ),
            const CardTile(
              name: 'Luxury Eteha',
              username: '@neonwatchout',
              imageUrl: 'assets/best_seller1.png',
            ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: backgroundColor,
      body: ListView(
        children: [
          header(),
          popular(),
          bestSeller(),
          const SizedBox(
            height: 40,
          ),
        ],
      ),
    );
  }
}
