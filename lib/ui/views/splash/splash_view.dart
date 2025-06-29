import 'package:sugar_pros/core/utils/exports.dart';
import 'package:sugar_pros/ui/views/splash/splash_viewmodel.dart';

class SplashView extends StackedView<SplashViewModel> {
  const SplashView({super.key});

  @override
  void onViewModelReady(SplashViewModel viewModel) {
    super.onViewModelReady(viewModel);
    WidgetsBinding.instance.addPostFrameCallback((_) {
      viewModel.setup();
      WidgetsBinding.instance.addPostFrameCallback((_) {
        Future.delayed(2.seconds, () {
          if (viewModel.user == null) {
          } else {
            viewModel.navigateToAuthView();
          }
        });
      });
    });
  }

  @override
  Widget builder(
    BuildContext context,
    SplashViewModel viewModel,
    Widget? child,
  ) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: context.isDarkMode ? Utils.lightdarkNav : Utils.lightThemeNav,
      child: Scaffold(
        body: Stack(
          alignment: Alignment.center,
          children: [
            Image.asset(
              'bg'.png,
              fit: BoxFit.cover,
              height: 1000.h,
              width: double.infinity,
            ),
            Image.asset('tatum'.png, height: 94.h),
          ],
        ),
      ),
    );
  }

  @override
  SplashViewModel viewModelBuilder(BuildContext context) => SplashViewModel();
}
