import 'package:sugar_pros/core/utils/exports.dart';
import 'package:sugar_pros/ui/views/dashboard/home/rmb/rmb_viewmodel.dart';
import 'package:sugar_pros/ui/widgets/buttons/custom_back_button.dart';
import 'package:sugar_pros/ui/widgets/upload_document_box.dart';
import 'package:flutter_switch/flutter_switch.dart';

class RmbPage2 extends StatelessWidget {
  const RmbPage2({super.key});

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
                            'Send To',
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
                            CustomTextField(label: 'Alipay ID', hintText: 'Enter ID'),
                            15.verticalSpace,
                            CustomTextField(label: 'Alipay ID', hintText: 'Enter ID'),
                            15.verticalSpace,
                            Text(
                              'Upload QR Code',
                              style: BrandTextStyles.medium.copyWith(
                                fontSize: 14.sp,
                                color: hexColor('#041915'),
                              ),
                            ),
                            10.verticalSpace,
                            UploadDocumentBox(title: 'Click to upload Alipay QR code'),
                            30.verticalSpace,
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Save Beneficiary',
                                  style: BrandTextStyles.medium.copyWith(
                                    fontSize: 16.sp,
                                    color: hexColor('#64748B'),
                                  ),
                                ),
                                FlutterSwitch(
                                  borderRadius: 20.r,
                                  toggleSize: 25,
                                  padding: 3,
                                  width: 60,
                                  activeColor: hexColor('#34C759'),
                                  value: false,
                                  onToggle: (val) {},
                                ),
                              ],
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
                        title: 'Continue',
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
