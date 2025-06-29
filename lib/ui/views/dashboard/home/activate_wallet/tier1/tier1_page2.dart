import 'package:sugar_pros/core/utils/exports.dart';
import 'package:sugar_pros/ui/views/dashboard/home/activate_wallet/tier1/tier1_viewmodel.dart';
import 'package:sugar_pros/ui/widgets/buttons/custom_back_button.dart';
import 'package:sugar_pros/ui/widgets/svg_icon.dart';

class Tier1Page2 extends StatelessWidget {
  const Tier1Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return ReactivePartialBuild<Tier1ViewModel>(
      builder:
          (context, viewModel) => Scaffold(
            body: SafeArea(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 17.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomBackButton(
                          onTap: () => locator<NavigationService>().back(),
                          color: hexColor('#F1F5F9'),
                          iconColor: hexColor('#334155'),
                        ),
                        Text(
                          '',
                          style: BrandTextStyles.semiBold.copyWith(
                            fontSize: 18.sp,
                            color: hexColor('#041915'),
                          ),
                        ),
                        SizedBox(width: 20.w, height: 20.h),
                      ],
                    ),
                  ),
                  10.verticalSpace,
                  Divider(color: hexColor('#F1F5F9')),
                  20.verticalSpace,
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 17.w),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Take a Quick selfie ',
                            style: BrandTextStyles.semiBold.copyWith(
                              fontSize: 24.sp,
                              color: hexColor('#041915'),
                            ),
                          ),
                          Text(
                            'We’ll use it to verify your Identity',
                            style: BrandTextStyles.regular.copyWith(
                              fontSize: 18.sp,
                              color: hexColor('#64748B'),
                            ),
                          ),
                          100.verticalSpace,
                          Center(child: SvgIcon('face'.svg)),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 17.w),
                    child: CustomButton(onTap: () => viewModel.forward(), title: 'Take Selfie'),
                  ),
                  SizedBox(height: 20 + bottomPadding(context)),
                ],
              ),
            ),
          ),
    );
  }
}
