import 'package:sugar_pros/core/utils/exports.dart';
import 'package:sugar_pros/ui/views/dashboard/home/rmb/rmb_viewmodel.dart';
import 'package:sugar_pros/ui/widgets/buttons/custom_back_button.dart';
import 'package:sugar_pros/ui/widgets/svg_icon.dart';

class RmbPage3 extends StatelessWidget {
  const RmbPage3({super.key});

  @override
  Widget build(BuildContext context) {
    return ReactivePartialBuild<RmbViewModel>(
      builder:
          (context, viewModel) => AnnotatedRegion<SystemUiOverlayStyle>(
            value: context.isDarkMode ? Utils.darkTheme : Utils.lightTheme,
            child: Scaffold(
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
                            onTap: () => viewModel.backward(),
                            color: hexColor('#F1F5F9'),
                            iconColor: hexColor('#334155'),
                          ),
                          Text(
                            'Confirm Payment',
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
                            20.verticalSpace,
                            Text(
                              'You are sending',
                              style: BrandTextStyles.medium.copyWith(
                                fontSize: 14.sp,
                                color: hexColor('#041915'),
                              ),
                            ),
                            5.verticalSpace,
                            Container(
                              padding: EdgeInsets.all(16.h),
                              width: double.infinity,
                              decoration: ShapeDecoration(
                                color: hexColor('#E6EEEC'),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8.r),
                                ),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    '500 RMB',
                                    style: BrandTextStyles.semiBold.copyWith(
                                      color: hexColor('#041915'),
                                      fontSize: 20.sp,
                                    ),
                                  ),
                                  Text(
                                    '=₦5,000.00',
                                    style: BrandTextStyles.regular.copyWith(
                                      color: hexColor('#64748B'),
                                      fontSize: 14.sp,
                                      fontFamilyFallback: ['Inter']
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            20.verticalSpace,
                            Text(
                              'TO',
                              style: BrandTextStyles.medium.copyWith(
                                fontSize: 14.sp,
                                color: hexColor('#041915'),
                              ),
                            ),
                            5.verticalSpace,
                            Container(
                              padding: EdgeInsets.all(16.h),
                              width: double.infinity,
                              decoration: ShapeDecoration(
                                color: hexColor('#E6EEEC'),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8.r),
                                ),
                              ),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          '8492947203',
                                          style: BrandTextStyles.semiBold.copyWith(
                                            color: hexColor('#041915'),
                                            fontSize: 20.sp,
                                          ),
                                        ),
                                        Text(
                                          'Chichuang Lee',
                                          style: BrandTextStyles.regular.copyWith(
                                            color: hexColor('#64748B'),
                                            fontSize: 14.sp,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Image.asset('rec'.png, height: 47.h),
                                ],
                              ),
                            ),
                            30.verticalSpace,
                            Text(
                              'Pay With',
                              style: BrandTextStyles.medium.copyWith(
                                fontSize: 14.sp,
                                color: hexColor('#041915'),
                              ),
                            ),
                            5.verticalSpace,
                            Container(
                              padding: EdgeInsets.all(16.h),
                              width: double.infinity,
                              decoration: ShapeDecoration(
                                color: hexColor('#E6EEEC'),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8.r),
                                ),
                              ),
                              child: Row(
                                children: [
                                  SvgIcon('circle-active'.svg),
                                  10.horizontalSpace,
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Wallet',
                                          style: BrandTextStyles.medium.copyWith(
                                            color: hexColor('#041915'),
                                            fontSize: 14.sp,
                                          ),
                                        ),
                                        Text(
                                          'Balance: ₦660,000.00',
                                          style: BrandTextStyles.regular.copyWith(
                                            color: hexColor('#64748B'),
                                            fontSize: 14.sp,
                                            fontFamilyFallback: ['Inter']
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            10.verticalSpace,
                            Container(
                              padding: EdgeInsets.all(16.h),
                              width: double.infinity,
                              decoration: ShapeDecoration(
                                color: hexColor('#F8FAFC'),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8.r),
                                ),
                              ),
                              child: Row(
                                children: [
                                  SvgIcon('circle'.svg),
                                  10.horizontalSpace,
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Card',
                                          style: BrandTextStyles.medium.copyWith(
                                            color: hexColor('#041915'),
                                            fontSize: 14.sp,
                                          ),
                                        ),
                                        Text(
                                          '**** **** 7625',
                                          style: BrandTextStyles.regular.copyWith(
                                            color: hexColor('#64748B'),
                                            fontSize: 14.sp,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
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
                        title: 'Buy RMB',
                      ),
                    ),
                    SizedBox(height: 20 + bottomPadding(context)),
                  ],
                ),
              ),
            ),
          ),
    );
  }
}
