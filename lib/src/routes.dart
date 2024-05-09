import 'package:flutter/cupertino.dart';

import 'common/widgets/test.dart';
import 'features/wallet/view/wallet_setup_view.dart';

class AppRoutes {
  static const String root = '/';
  static const String test = '/test';
  static const String home = '/home';
  static const String createWallet = '/createWallet';
  static const String importWallet = '/importWallet';

  ///
  static Map<String, WidgetBuilder> mappingRoutes = {
    root: (BuildContext context) => const WalletSetupView(),
    test: (BuildContext context) => const TestView(),
  };
}
