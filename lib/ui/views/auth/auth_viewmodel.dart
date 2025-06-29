import 'package:sugar_pros/core/utils/exports.dart';

class AuthViewModel extends BaseViewModel {
  final NavigationService _navigationService = locator<NavigationService>();

  String? _identity;
  String? get identity => _identity;
  set identity(String? val) {
    _identity = val;
    notifyListeners();
  }

  void navigateToPatientRegister() {
    _navigationService.navigateTo(Routes.patientAccount);
  }
}
