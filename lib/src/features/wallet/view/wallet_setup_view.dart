import 'package:flutter/material.dart';

import '../../../common/base/index.dart';
import '../../../common/resources/styles.dart';
import '../vm/wallet_setup_vm.dart';

class WalletSetupView extends BaseView<WalletSetupVM> {
  const WalletSetupView({super.key});

  @override
  Widget builder(BuildContext context, WalletSetupVM model, Widget? child) {
    // var l10n = context.l10n;
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 60),
          Text(
            "Wallet Setup",
            maxLines: 1,
            style: FontStyles.Heading(),
          ),
        ],
      ),
    );
  }

  @override
  WalletSetupVM viewModelFactory() {
    return WalletSetupVM();
  }
}
