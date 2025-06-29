import 'package:sugar_pros/core/utils/exports.dart';

class SetupPinViewModel extends BaseViewModel {
  final DialogService _dialogService = locator<DialogService>();
  final NavigationService _navigationService = locator<NavigationService>();

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
      description: 'Registration Complete',
      mainButtonTitle: 'Done',
    );
    if (res?.confirmed ?? false) {
      _navigationService.clearStackAndShow(Routes.login);
    }
  }
}
