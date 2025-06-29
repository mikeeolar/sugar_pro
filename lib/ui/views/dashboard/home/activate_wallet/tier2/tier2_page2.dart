import 'package:sugar_pros/core/utils/exports.dart';
import 'package:sugar_pros/ui/views/dashboard/home/activate_wallet/tier2/tier2_viewmodel.dart';
import 'package:sugar_pros/ui/widgets/buttons/custom_back_button.dart';

class Tier2Page2 extends StatelessWidget {
  const Tier2Page2({super.key});

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
                  10.verticalSpace,
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 17.w),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Enter your Residential Address',
                            style: BrandTextStyles.semiBold.copyWith(
                              fontSize: 24.sp,
                              color: hexColor('#041915'),
                            ),
                          ),
                          20.verticalSpace,
                          CustomTextField(label: 'House Address', hintText: 'Enter house address'),
                          15.verticalSpace,
                          CustomTextField(label: 'City', hintText: 'Enter city'),
                          15.verticalSpace,
                          CustomTextField(label: 'Country', hintText: 'Select country'),
                          15.verticalSpace,
                          CustomTextField(label: 'State', hintText: 'Select state'),
                          15.verticalSpace,
                          CustomTextField(label: 'Local Government', hintText: 'Select local government'),
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
