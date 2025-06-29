import 'package:sugar_pros/core/utils/exports.dart';
import 'package:sugar_pros/ui/views/dashboard/home/activate_wallet/tier1/tier1_viewmodel.dart';
import 'package:sugar_pros/ui/widgets/buttons/custom_back_button.dart';
import 'package:sugar_pros/ui/widgets/svg_icon.dart';
import 'package:pinput/pinput.dart';

class Tier1Page3 extends StatelessWidget {
  const Tier1Page3({super.key});

  @override
  Widget build(BuildContext context) {
    final basePinTheme = PinTheme(
      width: 24,
      height: 24,
      decoration: BoxDecoration(color: Colors.transparent),
    );
    return ReactivePartialBuild<Tier1ViewModel>(
      builder:
          (context, viewModel) => Scaffold(
            body: SafeArea(
              child: StatefulBuilder(
                builder:
                    (context, modalstate) => Material(
                      color: Colors.white,
                      child: Stack(
                        alignment: Alignment.center,
                        fit: StackFit.expand,
                        children: [
                          Positioned(
                            top: 10.h,
                            left: 20.w,
                            right: 20.w,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    CustomBackButton(
                                      onTap: () => viewModel.backward(),
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
                                10.verticalSpace,
                                Text(
                                  'Verify your BVN',
                                  style: BrandTextStyles.semiBold.copyWith(
                                    fontSize: 24.sp,
                                    color: hexColor('#041915'),
                                  ),
                                ),
                                Text(
                                  'Please enter the 6 digit code sent to your BVN phone number ending 5098',
                                  style: BrandTextStyles.regular.copyWith(
                                    fontSize: 18.sp,
                                    color: hexColor('#64748B'),
                                  ),
                                ),
                                50.verticalSpace,
                                Container(
                                  height: 104.h,
                                  width: double.infinity,
                                  decoration: ShapeDecoration(
                                    color: hexColor('#F1F5F9'),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(12.r),
                                    ),
                                  ),
                                  child: Center(
                                    child: Pinput(
                                      length: 6,
                                      keyboardType: TextInputType.number,
                                      controller: viewModel.pinController,
                                      obscureText: true,
                                      obscuringCharacter: '*',
                                      cursor: Column(
                                        mainAxisAlignment: MainAxisAlignment.end,
                                        children: [
                                          Container(
                                            width: 2,
                                            height: 20,
                                            color: Colors.black, // ← Your desired cursor color
                                          ),
                                        ],
                                      ),
                                      onCompleted: (value) {
                                        viewModel.launchSuccessDialog();
                                      },
                                      useNativeKeyboard: false,
                                      defaultPinTheme: basePinTheme,
                                      focusedPinTheme: basePinTheme.copyWith(
                                        textStyle: TextStyle(
                                          fontSize: 20,
                                          color: Colors.white, // white when typing
                                        ),
                                      ),
                                      submittedPinTheme: basePinTheme.copyWith(
                                        textStyle: TextStyle(
                                          fontSize: 20,
                                          color: Colors.white, // white after filled
                                        ),
                                      ),
                                      preFilledWidget: Image.asset(
                                        'obscure'.png,
                                        height: 18.h,
                                        color: hexColor('#CBD5E1'),
                                      ),
                                      obscuringWidget: Image.asset(
                                        'obscure'.png,
                                        color: hexColor('#334155'),
                                        height: 18.h,
                                      ),
                                    ),
                                  ),
                                ),
                                30.verticalSpace,
                                Center(
                                  child: Container(
                                    padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 12.w),
                                    decoration: ShapeDecoration(
                                      color: hexColor('#F1F5F9'),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(100.r),
                                      ),
                                    ),
                                    child: Text(
                                      'Resend Code In 02:15',
                                      style: BrandTextStyles.medium.copyWith(
                                        fontSize: 14.sp,
                                        color: hexColor('#041915'),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Positioned(
                            bottom: 0.h,
                            left: 0,
                            right: 0,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: [
                                    keyPad(
                                      context: context,
                                      text: '1',
                                      func:
                                          (text) => modalstate(() {
                                            viewModel.onKeyTap(text);
                                          }),
                                    ),
                                    keyPad(
                                      context: context,
                                      text: '2',
                                      func:
                                          (text) => modalstate(() {
                                            viewModel.onKeyTap(text);
                                          }),
                                    ),
                                    keyPad(
                                      context: context,
                                      text: '3',
                                      func:
                                          (text) => modalstate(() {
                                            viewModel.onKeyTap(text);
                                          }),
                                    ),
                                  ],
                                ),
                                20.verticalSpace,
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: [
                                    keyPad(
                                      context: context,
                                      text: '4',
                                      func:
                                          (text) => modalstate(() {
                                            viewModel.onKeyTap(text);
                                          }),
                                    ),
                                    keyPad(
                                      context: context,
                                      text: '5',
                                      func:
                                          (text) => modalstate(() {
                                            viewModel.onKeyTap(text);
                                          }),
                                    ),
                                    keyPad(
                                      context: context,
                                      text: '6',
                                      func:
                                          (text) => modalstate(() {
                                            viewModel.onKeyTap(text);
                                          }),
                                    ),
                                  ],
                                ),
                                20.verticalSpace,
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: [
                                    keyPad(
                                      context: context,
                                      text: '7',
                                      func:
                                          (text) => modalstate(() {
                                            viewModel.onKeyTap(text);
                                          }),
                                    ),
                                    keyPad(
                                      context: context,
                                      text: '8',
                                      func:
                                          (text) => modalstate(() {
                                            viewModel.onKeyTap(text);
                                          }),
                                    ),
                                    keyPad(
                                      context: context,
                                      text: '9',
                                      func:
                                          (text) => modalstate(() {
                                            viewModel.onKeyTap(text);
                                          }),
                                    ),
                                  ],
                                ),
                                20.verticalSpace,
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: [
                                    SizedBox(width: 75.w, height: 60.h),
                                    keyPad(
                                      context: context,
                                      text: '0',
                                      func:
                                          (text) => modalstate(() {
                                            viewModel.onKeyTap(text);
                                          }),
                                    ),
                                    InkWell(
                                      onTap: () {
                                        HapticFeedback.heavyImpact();
                                        viewModel.deletePin();
                                      },
                                      borderRadius: BorderRadius.circular(10.r),
                                      child: Container(
                                        color: Colors.transparent,
                                        width: 75.w,
                                        height: 60.h,
                                        child: Center(
                                          child: SvgIcon('delete'.svg, color: hexColor('#041915')),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 30.h + bottomPadding(context)),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
              ),
            ),
          ),
    );
  }
}

Widget keyPad({
  required BuildContext context,
  required String text,
  required ValueChanged<String> func,
}) {
  return Material(
    color: Colors.transparent,
    child: InkWell(
      onTap: () {
        HapticFeedback.heavyImpact();
        func(text);
      },
      borderRadius: BorderRadius.circular(10.r),
      child: Container(
        color: Colors.transparent,
        width: 75.w,
        height: 60.h,
        child: Center(
          child: Text(
            text,
            style: BrandTextStyles.bold.copyWith(
              fontSize: 32.sp,
              height: 1.167,
              color: hexColor('#041915'),
            ),
          ),
        ),
      ),
    ),
  );
}
