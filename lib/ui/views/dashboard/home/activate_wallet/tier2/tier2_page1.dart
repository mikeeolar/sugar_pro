import 'package:sugar_pros/core/utils/exports.dart';
import 'package:sugar_pros/ui/views/dashboard/home/activate_wallet/tier2/tier2_viewmodel.dart';
import 'package:sugar_pros/ui/widgets/buttons/custom_back_button.dart';

class Tier2Page1 extends StatelessWidget {
  const Tier2Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return ReactivePartialBuild<Tier2ViewModel>(
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
                          'Tier 2 Verification',
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
                            'Provide your National Identification Number',
                            style: BrandTextStyles.semiBold.copyWith(
                              fontSize: 24.sp,
                              color: hexColor('#041915'),
                            ),
                          ),
                          20.verticalSpace,
                          CustomTextField(label: 'NIN', hintText: 'Enter your BVN'),
                          15.verticalSpace,
                          CustomTextField(label: 'Date of Birth', hintText: 'YYYY-MM-DD'),
                          15.verticalSpace,
                          CustomTextField(label: 'Gender', hintText: 'Select Gender'),
                          15.verticalSpace,
                          CustomTextField(label: 'Occupation', hintText: 'Enter occupation'),
                          15.verticalSpace,
                          CustomTextField(label: 'Source of Funds', hintText: 'What is your source of funds'),
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
                      title: 'Continue',
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
