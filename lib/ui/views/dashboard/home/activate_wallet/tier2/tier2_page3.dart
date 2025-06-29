import 'package:sugar_pros/core/utils/exports.dart';
import 'package:sugar_pros/ui/views/dashboard/home/activate_wallet/tier2/tier2_viewmodel.dart';
import 'package:sugar_pros/ui/widgets/buttons/custom_back_button.dart';
import 'package:sugar_pros/ui/widgets/upload_document_box.dart';

class Tier2Page3 extends StatelessWidget {
  const Tier2Page3({super.key});

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
                            'Upload Documents',
                            style: BrandTextStyles.semiBold.copyWith(
                              fontSize: 24.sp,
                              color: hexColor('#041915'),
                            ),
                          ),
                          20.verticalSpace,
                          CustomTextField(
                            label: 'Identity card',
                            hintText: 'Select form of identity',
                          ),
                          15.verticalSpace,
                          UploadDocumentBox(),
                          15.verticalSpace,
                          Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(
                                  text: 'Upload Utility Bill ',
                                  style: BrandTextStyles.medium.copyWith(
                                    fontSize: 14.sp,
                                    color: hexColor('#041915'),
                                  ),
                                ),
                                TextSpan(
                                  text: '(Not more than 3 months old)',
                                  style: BrandTextStyles.regular.copyWith(
                                    color: hexColor('#041915'),
                                    fontSize: 12.sp,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          10.verticalSpace,
                          UploadDocumentBox(),
                          15.verticalSpace,
                          Text(
                            'Upload E-Signature',
                            style: BrandTextStyles.medium.copyWith(
                              fontSize: 14.sp,
                              color: hexColor('#041915'),
                            ),
                          ),
                          10.verticalSpace,
                          UploadDocumentBox(),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 17.w),
                    child: CustomButton(
                      onTap: () {
                        viewModel.launchSuccessDialog();
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
