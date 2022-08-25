import 'package:flashy_tab_bar2/flashy_tab_bar2.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:qarya_nft/pages/home_page.dart';
import 'package:qarya_nft/shared/theme.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: const HomePage(),
      bottomNavigationBar: FlashyTabBar(
        selectedIndex: selectedIndex,
        showElevation: true,
        onItemSelected: (index) => setState(() {
          selectedIndex = index;
        }),
        iconSize: 24,
        backgroundColor: whiteColor,
        items: [
          FlashyTabBarItem(
            icon: const Icon(
              IconlyLight.home,
              color: blackColor,
            ),
            title: Text(
              'Home',
              style: purpleTextStyle.copyWith(
                fontSize: 16,
                fontWeight: medium,
              ),
            ),
          ),
          FlashyTabBarItem(
            icon: const Icon(
              IconlyLight.discovery,
              color: blackColor,
            ),
            title: Text(
              'Discovery',
              style: purpleTextStyle.copyWith(
                fontSize: 16,
                fontWeight: medium,
              ),
            ),
          ),
          FlashyTabBarItem(
            icon: const Icon(
              IconlyLight.wallet,
              color: blackColor,
            ),
            title: Text(
              'Wallet',
              style: purpleTextStyle.copyWith(
                fontSize: 16,
                fontWeight: medium,
              ),
            ),
          ),
          FlashyTabBarItem(
            icon: const Icon(
              IconlyLight.buy,
              color: blackColor,
            ),
            title: Text(
              'Cart',
              style: purpleTextStyle.copyWith(
                fontSize: 16,
                fontWeight: medium,
              ),
            ),
          ),
          FlashyTabBarItem(
            icon: const Icon(
              IconlyLight.setting,
              color: blackColor,
            ),
            title: Text(
              'Setting',
              style: purpleTextStyle.copyWith(
                fontSize: 16,
                fontWeight: medium,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
