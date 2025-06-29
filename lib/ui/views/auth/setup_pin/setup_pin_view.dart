import 'package:sugar_pros/core/utils/exports.dart';
import 'package:sugar_pros/ui/views/auth/setup_pin/setup_pin_viewmodel.dart';
import 'package:sugar_pros/ui/views/auth/setup_pin/widgets/biometric_bottomsheet.dart';
import 'package:sugar_pros/ui/widgets/svg_icon.dart';
import 'package:pinput/pinput.dart';

class SetupPinView extends StackedView<SetupPinViewModel> {
  const SetupPinView({super.key});

  @override
  Widget builder(BuildContext context, SetupPinViewModel viewModel, Widget? child) {
    final basePinTheme = PinTheme(
      width: 24,
      height: 24,
      textStyle: TextStyle(fontSize: 20.sp, color: Colors.grey[400]),
      decoration: BoxDecoration(color: Colors.transparent),
    );
    return Scaffold(
      backgroundColor: hexColor('#075143'),
      body: SafeArea(
        child: StatefulBuilder(
          builder:
              (context, modalstate) => Material(
                color: hexColor('#075143'),
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
                          Text(
                            'Create a 6 Digit Pin',
                            style: BrandTextStyles.semiBold.copyWith(
                              fontSize: 24.sp,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            'Pin makes it easier and safer to log In.',
                            style: BrandTextStyles.regular.copyWith(
                              fontSize: 15.sp,
                              color: hexColor('#E2E8F0'),
                            ),
                          ),
                          50.verticalSpace,
                          Container(
                            height: 104.h,
                            width: double.infinity,
                            decoration: ShapeDecoration(
                              color: hexColor('#206256'),
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
                                onCompleted: (value) {
                                  bottomModalSetup(
                                    context: context,
                                    child: BiometricBottomsheet(
                                      onEnable: () => viewModel.launchSuccessDialog(),
                                      onLater: () => viewModel.launchSuccessDialog(),
                                    ),
                                  );
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
                                  color: hexColor('#6A978E'),
                                ),
                                obscuringWidget: Image.asset(
                                  'obscure'.png,
                                  color: Colors.white,
                                  height: 18.h,
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
                                  child: Center(child: SvgIcon('delete'.svg)),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: Platform.isAndroid ? 40.h : 20.h + bottomPadding(context)),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
        ),
      ),
    );
  }

  @override
  SetupPinViewModel viewModelBuilder(BuildContext context) => SetupPinViewModel();
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
              color: Colors.white,
            ),
          ),
        ),
      ),
    ),
  );
}
