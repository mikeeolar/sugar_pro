import 'package:sugar_pros/core/utils/exports.dart';

class HomeViewModel extends BaseViewModel {
  final NavigationService _navigationService = locator<NavigationService>();

  void navigateToActivateWallet() {
    _navigationService.navigateTo(Routes.activateWallet);
  }

  void navigateToRmb() {
    _navigationService.navigateTo(Routes.rmb);
  }
}
