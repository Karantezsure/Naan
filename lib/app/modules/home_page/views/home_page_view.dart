import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:naan_wallet/app/modules/home_page/widgets/account_value_widget/account_value_widget.dart';
import 'package:naan_wallet/app/modules/home_page/widgets/liquidity_baking_widget/liquidity_baking_widget.dart';
import 'package:naan_wallet/app/modules/home_page/widgets/my_nfts_widget/my_nfts_widget.dart';
import 'package:naan_wallet/app/modules/home_page/widgets/public_nft_gallery/public_nft_gallery_widget.dart';
import 'package:naan_wallet/app/modules/home_page/widgets/register_widgets.dart';
import 'package:naan_wallet/app/modules/home_page/widgets/tezos_price/tezos_price_widget.dart';
import 'package:naan_wallet/app/modules/home_page/widgets/news_headline/news_headline.dart';
import 'package:naan_wallet/utils/colors/colors.dart';
import 'package:naan_wallet/utils/extensions/size_extension.dart';

import '../controllers/home_page_controller.dart';

class HomePageView extends GetView<HomePageController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: 1.width,
        decoration: BoxDecoration(
          gradient: background,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              AccountValueWidget(),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 0.04.width),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [TezosPriceWidget(), MyNFTwidget()],
                ),
              ),
              0.02.vspace,
              Main_Headline(),
              0.02.vspace,
              PublicNFTgalleryWidget(),
              0.02.vspace,
              LiquidityBakingWidget()
            ],
          ),
        ),
        // child: SingleChildScrollView(
        //   physics: const AlwaysScrollableScrollPhysics(),
        //   child: Stack(
        //     children: [
        //       //background gradient color
        //       Positioned(
        //         top: 0,
        //         bottom: 0,
        //         left: 0,
        //         right: 0,
        //         child: Container(
        //           decoration: BoxDecoration(
        //             gradient: background,
        //           ),
        //         ),
        //       ),
        //       Column(
        //         children: [
        //           (MediaQuery.of(context).padding.top + 20)
        //               .vspace, //notification bar padding + 20

        //           appBar(),

        //           32.vspace, //header spacing

        //           Padding(
        //             padding: const EdgeInsets.only(left: 24.0, right: 24),
        //             child: Wrap(
        //               runSpacing: 28,
        //               spacing: 20,
        //               children: registeredWidgets,
        //             ),
        //           ),
        //           28.vspace,
        //         ],
        //       ),
        //     ],
        //   ),
        // ),
      ),
    );
  }

  /// App Bar for Home Page
  Widget appBar() => Container(
        height: 34,
        padding: const EdgeInsets.symmetric(
            horizontal:
                35), // 24 + 11 = 35.24 is Foundation padding and 11 is internal widget padding
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              "assets/home_page/scanner.png",
              height: 25,
            ),
            Container(
              height: 34,
              width: 34,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
              ),
            ),
          ],
        ),
      );
}
