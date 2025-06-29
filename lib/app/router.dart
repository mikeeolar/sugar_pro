// ignore_for_file: unused_local_variable
import 'package:sugar_pros/core/utils/exports.dart';
import 'package:flutter/cupertino.dart';
import 'package:sugar_pros/ui/views/auth/login/login_view.dart';
import 'package:sugar_pros/ui/views/auth/patient_account/patient_account_view.dart';
import 'package:sugar_pros/ui/views/auth/setup_pin/setup_pin_view.dart';
import 'package:sugar_pros/ui/views/dashboard/dashboard_view.dart';
import 'package:sugar_pros/ui/views/dashboard/home/activate_wallet/activate_wallet_view.dart';
import 'package:sugar_pros/ui/views/dashboard/home/activate_wallet/tier1/tier1_view.dart';
import 'package:sugar_pros/ui/views/dashboard/home/activate_wallet/tier2/tier2_view.dart';
import 'package:sugar_pros/ui/views/dashboard/home/rmb/rmb_view.dart';
import 'package:sugar_pros/ui/views/splash/splash_view.dart';

abstract class Routes {
  static const splash = '/splash';
  static const onboarding = '/onboarding';
  static const auth = '/auth';
  static const patientAccount = '/patientAccount';
  static const login = '/login';
  static const setupPin = '/setupPin';
  static const dashboard = '/dashboard';
  static const activateWallet = '/activateWallet';
  static const tier1 = '/tier1';
  static const tier2 = '/tier2';
  static const rmb = '/rmb';
}

class Routers {
  Route<dynamic> onGenerateRoute(RouteSettings settings) {
    final dynamic args =
        settings.arguments is Map<String, dynamic> &&
                (settings.arguments as Map<String, dynamic>).containsKey('arguments')
            ? (settings.arguments as Map<String, dynamic>)['arguments']
            : settings.arguments;
    switch (settings.name) {
      case Routes.splash:
        return CupertinoPageRoute<dynamic>(
          builder: (context) => const SplashView(),
          settings: settings,
        );
      case Routes.patientAccount:
        return CupertinoPageRoute<dynamic>(
          builder: (context) => const PatientAccountView(),
          settings: settings,
        );
      case Routes.setupPin:
        return CupertinoPageRoute<dynamic>(
          builder: (context) => const SetupPinView(),
          settings: settings,
        );
      case Routes.login:
        return CupertinoPageRoute<dynamic>(
          builder: (context) => const LoginView(),
          settings: settings,
        );
      case Routes.dashboard:
        final int? index = args;
        return CupertinoPageRoute<dynamic>(
          builder: (context) => DashboardView(index: index),
          settings: settings,
        );
      case Routes.activateWallet:
        return CupertinoPageRoute<dynamic>(
          builder: (context) => const ActivateWalletView(),
          settings: settings,
        );
      case Routes.tier1:
        return CupertinoPageRoute<dynamic>(
          builder: (context) => const Tier1View(),
          settings: settings,
        );
      case Routes.tier2:
        return CupertinoPageRoute<dynamic>(
          builder: (context) => const Tier2View(),
          settings: settings,
        );
      case Routes.rmb:
        return CupertinoPageRoute<dynamic>(
          builder: (context) => const RmbView(),
          settings: settings,
        );
      default:
        return unknownRoutePage(settings.name!);
    }
  }
}

// borrowed from auto_route:
// returns an error page routes with a helper message.
PageRoute unknownRoutePage(String routeName) => CupertinoPageRoute(
  builder:
      (ctx) => Scaffold(
        body: Container(
          color: Colors.white,
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 8),
                child: Text(
                  routeName == '/'
                      ? 'Initial route not found! \n did you forget to annotate your home page with @initial or @MaterialRoute(initial:true)?'
                      : 'Route name $routeName is not found!',
                  textAlign: TextAlign.center,
                  style: const TextStyle(fontSize: 16),
                ),
              ),
              OutlinedButton.icon(
                label: const Text('Back'),
                icon: const Icon(Icons.arrow_back),
                onPressed: () => Navigator.of(ctx).pop(),
              ),
            ],
          ),
        ),
      ),
);
