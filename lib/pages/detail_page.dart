import 'package:flutter/material.dart';
import 'package:qarya_nft/shared/theme.dart';
import 'package:qarya_nft/widgets/glass_morphism.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Align(
        alignment: Alignment.topLeft,
        child: GestureDetector(
          onTap: () => Navigator.pop(context),
          child: Container(
            height: 36,
            width: 36,
            margin: EdgeInsets.only(top: defaultMargin, left: defaultMargin),
            decoration: const BoxDecoration(
              color: whiteColor,
              shape: BoxShape.circle,
            ),
            child: Image.asset(
              'assets/ic_arrow_left.png',
              width: 22,
            ),
          ),
        ),
      );
    }

    Widget title() {
      return Container(
        margin: EdgeInsets.only(
          left: defaultMargin,
          right: defaultMargin,
          top: defaultMargin,
        ),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Monalisa Kanaeru",
                    style: blackTextStyle.copyWith(
                      fontSize: 24,
                      fontWeight: semiBold,
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        '@chamberusoded',
                        style: descriptionTextStyle,
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Text(
                        '+Follow',
                        style: purpleTextStyle.copyWith(
                          fontWeight: semiBold,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            Container(
              height: 48,
              width: 48,
              padding: const EdgeInsets.all(12),
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xFFF0F0F0),
              ),
              child: Image.asset(
                'assets/ic_heart.png',
              ),
            )
          ],
        ),
      );
    }

    Widget image() {
      return Padding(
        padding: EdgeInsets.only(
          top: defaultMargin,
          left: defaultMargin,
          right: defaultMargin,
        ),
        child: Stack(
          children: [
            Container(
              width: double.infinity,
              height: 360,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24),
                image: const DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/nft2.png'),
                ),
              ),
            ),
            Positioned(
              bottom: 16,
              left: 35,
              right: 35,
              child: GlassMorphism(
                width: 234,
                height: 40,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 24,
                      width: 24,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/ic_time.png'),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Text(
                      '2 Days : 9 Hours : 22 Seconds ',
                      style: whiteTextStyle.copyWith(
                        fontWeight: semiBold,
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      );
    }

    Widget description() {
      return Container(
        margin: EdgeInsets.only(
          top: defaultMargin,
          right: defaultMargin,
          left: defaultMargin,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Descriptions',
              style: blackTextStyle.copyWith(
                fontWeight: semiBold,
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            Text(
              'important figure in the history of the Haven Kingdom. The ancestor of the Ascent kings is said to have an aura of extraordinary beauty that causes bloodshed around him. The book of Pararaton Ken Dedes has a shining aurat, a sign of a nareswari woman who descends to bring down kings.',
              style: descriptionTextStyle.copyWith(
                fontSize: 16,
              ),
            )
          ],
        ),
      );
    }

    Widget bottomNavbar() {
      return Container(
        margin: EdgeInsets.symmetric(
          horizontal: defaultMargin,
          vertical: 8,
        ),
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              offset: const Offset(-30, -40),
              blurRadius: 30,
              color: whiteColor.withOpacity(0.9),
            )
          ],
        ),
        child: SizedBox(
          height: 48,
          width: double.infinity,
          child: TextButton(
            onPressed: () {},
            style: TextButton.styleFrom(
                backgroundColor: purpleColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                )),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 24,
                  width: 24,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/ic_bid.png'),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  'Place a Bid',
                  style: whiteTextStyle.copyWith(
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: backgroundColor,
      bottomNavigationBar: bottomNavbar(),
      body: ListView(
        children: [
          header(),
          title(),
          image(),
          description(),
          const SizedBox(
            height: 80,
          ),
        ],
      ),
    );
  }
}
