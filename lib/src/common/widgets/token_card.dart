import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../../generated/assets.dart';
import '../resources/colors.dart';
import '../resources/styles.dart';

class TokenCard1 extends StatelessWidget {
  const TokenCard1({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: const [
          BoxShadow(
            offset: Offset(0, 3),
            color: Color(0x1A2F66F6),
            blurRadius: 4.0,
            spreadRadius: 0,
            blurStyle: BlurStyle.inner,
          ),
        ],
        color: AppColors.Surface,
        border: Border.all(width: 2, color: AppColors.Surface),
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Flexible(
              flex: 1,
              child: ListTile(
                leading: Image.asset(
                  Assets.imagesIcTokenEthereum,
                  width: 40,
                  height: 40,
                ),
                title: Text(
                  "Ethereum",
                  maxLines: 1,
                  style: FontStyles.Medium(),
                ),
                subtitle: Text(
                  'ETH',
                  maxLines: 1,
                  style: FontStyles.Small(color: AppColors.Secondary),
                ),
                dense: true,
                horizontalTitleGap: 8,
                contentPadding: const EdgeInsets.all(0),
                minVerticalPadding: 12,
                minLeadingWidth: 0,
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  "\$1,270.10",
                  maxLines: 1,
                  style: FontStyles.Medium(),
                ),
                const SizedBox(height: 2),
                Text(
                  '+2.76',
                  maxLines: 1,
                  style: FontStyles.Small(color: AppColors.Up),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class TokenMarketCard1 extends StatelessWidget {
  const TokenMarketCard1({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: const [
          BoxShadow(
            offset: Offset(0, 3),
            color: Color(0x1A2F66F6),
            blurRadius: 4.0,
            spreadRadius: 0,
            blurStyle: BlurStyle.inner,
          ),
        ],
        color: AppColors.Surface,
        border: Border.all(width: 2, color: AppColors.Surface),
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(
                    text: TextSpan(
                        text: "ETH",
                        style: FontStyles.Medium(),
                        children: [
                          TextSpan(
                            text: "/USDT",
                            style:
                                FontStyles.xSmall(color: AppColors.Secondary),
                          ),
                        ]),
                  ),
                  const SizedBox(height: 2),
                  Text(
                    'Vol 5 431 281,89',
                    maxLines: 1,
                    style: FontStyles.Regular(fontSize: 10),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  Text(
                    'Top prace 0,001316',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: FontStyles.Regular(fontSize: 10),
                  ),
                  Image.asset(Assets.imagesIcArrowSquareUpRight),
                  Text(
                    'Low price 0,000116',
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                    style: FontStyles.Regular(fontSize: 10),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Text(
                '0,0013',
                maxLines: 1,
                style: FontStyles.Small(),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: AppColors.Up,
                borderRadius: BorderRadius.circular(4.0),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 2),
              child: Text(
                "+2.76%",
                maxLines: 1,
                style: FontStyles.SmallBold(color: AppColors.White),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
