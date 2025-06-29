import 'package:sugar_pros/core/utils/exports.dart';
import 'package:sugar_pros/ui/views/dashboard/home/activate_wallet/tier1/tier1_viewmodel.dart';
import 'package:sugar_pros/ui/widgets/buttons/custom_back_button.dart';

class Tier1Page1 extends StatelessWidget {
  const Tier1Page1({super.key});

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
                          'Tier 1 Verification',
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
                            'Provide your Bank Verification Number',
                            style: BrandTextStyles.semiBold.copyWith(
                              fontSize: 24.sp,
                              color: hexColor('#041915'),
                            ),
                          ),
                          20.verticalSpace,
                          CustomTextField(label: 'BVN', hintText: 'Enter your BVN'),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 17.w),
                    child: CustomButton(
                      onTap: () {
                        viewModel.forward();
                      },
                      title: 'Verify BVN',
                    ),
                  ),
                  SizedBox(height: 20 + bottomPadding(context)),
                ],
              ),
            ),
          ),
    );
  }
}
