import 'package:sugar_pros/core/utils/exports.dart';
import 'package:sugar_pros/ui/views/dashboard/home/rmb/rmb_viewmodel.dart';
import 'package:sugar_pros/ui/views/dashboard/home/rmb/widgets/chinese_wallet.dart';
import 'package:sugar_pros/ui/views/dashboard/home/rmb/widgets/nigerian_wallet.dart';
import 'package:sugar_pros/ui/widgets/buttons/custom_back_button.dart';

class RmbPage1 extends StatelessWidget {
  const RmbPage1({super.key});

  @override
  Widget build(BuildContext context) {
    return ReactivePartialBuild<RmbViewModel>(
      builder:
          (context, viewModel) => Scaffold(
            backgroundColor: hexColor('#041915'),
            body: SafeArea(
              child: DefaultTabController(
                length: 2,
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 17.w),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomBackButton(
                            onTap: () => locator<NavigationService>().back(),
                            color: hexColor('#1D302C'),
                            iconColor: Colors.white,
                          ),
                          Text(
                            'Buy RMB',
                            style: BrandTextStyles.semiBold.copyWith(
                              fontSize: 18.sp,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(width: 20.w, height: 20.h),
                        ],
                      ),
                    ),
                    10.verticalSpace,
                    Divider(color: hexColor('#0D2D27')),
                    20.verticalSpace,
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 17.w),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: double.infinity,
                              height: 55.h,
                              padding: EdgeInsets.symmetric(horizontal: 9.w, vertical: 10.h),
                              decoration: ShapeDecoration(
                                color: hexColor('#1D302C'),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.r),
                                ),
                              ),
                              child: TabBar(
                                labelPadding: EdgeInsets.zero,
                                splashBorderRadius: BorderRadius.circular(7.r),
                                padding: EdgeInsets.zero,
                                indicatorSize: TabBarIndicatorSize.tab,
                                indicatorColor: hexColor('#C4F928'),
                                unselectedLabelColor: hexColor('#CDD1D0'),
                                dividerHeight: 0,
                                labelColor: hexColor('#041915'),
                                indicatorPadding: EdgeInsets.symmetric(horizontal: 0.w),
                                labelStyle: BrandTextStyles.medium.copyWith(
                                  fontSize: 14.sp,
                                  color: hexColor('#041915'),
                                ),
                                indicator: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8.r),
                                  color: hexColor('#C4F928'),
                                ),
                                tabs: const [
                                  Tab(text: 'Chinese Alipay Wallet'),
                                  Tab(text: 'Nigerian Alipay Wallet'),
                                ],
                              ),
                            ),
                            30.verticalSpace,
                            Expanded(
                              child: TabBarView(children: [ChineseWallet(), NigerianWallet()]),
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
                        backgroundColor: hexColor('#D2FF4D'),
                        textColor: hexColor('#041915'),
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
