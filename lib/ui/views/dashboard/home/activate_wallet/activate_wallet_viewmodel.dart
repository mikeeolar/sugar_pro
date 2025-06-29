import 'package:sugar_pros/core/utils/exports.dart';

class ActivateWalletViewModel extends ReactiveViewModel {
  final NavigationService _navigationService = locator<NavigationService>();

  void navigateToTier1() {
    _navigationService.navigateTo(Routes.tier1);
  }

  void navigateToTier2() {
    _navigationService.navigateTo(Routes.tier2);
  }
}
