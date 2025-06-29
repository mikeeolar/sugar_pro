import 'package:sugar_pros/core/utils/exports.dart';

class RmbViewModel extends IndexTrackingViewModel {
  final DialogService _dialogService = locator<DialogService>();
  final NavigationService _navigationService = locator<NavigationService>();

  final PageController pageController = PageController();
  int activeIndex = 0;

  final TextEditingController pinController = TextEditingController();
  void onKeyTap(String value) {
    if (pinController.text.length <= 6) {
      pinController.text += value;
    }
  }

  void deletePin() {
    if (pinController.text.isNotEmpty) {
      pinController.text = pinController.text.substring(0, pinController.text.length - 1);
    }
  }

  void launchSuccessDialog() async {
    DialogResponse? res = await _dialogService.showCustomDialog(
      useSafeArea: false,
      variant: DialogType.success,
      barrierColor: Colors.white,
      title: 'All Done',
      description: 'Payment Complete',
      mainButtonTitle: 'Done',
    );
    if (res?.confirmed ?? false) {
      _navigationService.clearStackAndShow(Routes.dashboard);
    }
  }

  void forward() {
    pageController.nextPage(duration: const Duration(milliseconds: 350), curve: Curves.easeIn);
  }

  void backward() {
    pageController.previousPage(duration: const Duration(milliseconds: 350), curve: Curves.easeOut);
  }

  void jumpTo(int val) {
    pageController.jumpToPage(val);
  }
}
