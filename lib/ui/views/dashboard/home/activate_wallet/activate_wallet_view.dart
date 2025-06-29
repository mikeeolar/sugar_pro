import 'package:sugar_pros/core/utils/exports.dart';
import 'package:sugar_pros/ui/views/dashboard/home/activate_wallet/activate_wallet_viewmodel.dart';
import 'package:sugar_pros/ui/views/dashboard/home/activate_wallet/widgets/tier_verifcation_card.dart';
import 'package:sugar_pros/ui/widgets/buttons/custom_back_button.dart';

class ActivateWalletView extends StackedView<ActivateWalletViewModel> {
  const ActivateWalletView({super.key});

  @override
  Widget builder(BuildContext context, ActivateWalletViewModel viewModel, Widget? child) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
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
                      onTap: () => locator<NavigationService>().back(),
                      color: hexColor('#F1F5F9'),
                      iconColor: hexColor('#334155'),
                    ),
                    Text(
                      'Activate Wallet',
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
                      TierVerificationCard(
                        onTap: () => viewModel.navigateToTier1(),
                        title: 'Tier 1 Verification',
                        dailyTransactionLimit: '₦2,000,000',
                        maxAccountBalance: '₦5,000,000',
                        requiredDocuments: ['Bank Verification Number', 'Selfie Verification'],
                      ),
                      20.verticalSpace,
                      TierVerificationCard(
                        onTap: () => viewModel.navigateToTier2(),
                        title: 'Tier 2 Verification',
                        dailyTransactionLimit: '₦10,000,000',
                        maxAccountBalance: 'Unlimited',
                        requiredDocuments: [
                          'NIN',
                          'Residential Address',
                          'Signature',
                          'Utility Bill',
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 17.w),
                child: CustomButton(onTap: () => viewModel.navigateToTier1(), title: 'Upgrade to Tier 1'),
              ),
              SizedBox(height: 20 + bottomPadding(context)),
            ],
          ),
        ),
      ),
    );
  }

  @override
  ActivateWalletViewModel viewModelBuilder(BuildContext context) => ActivateWalletViewModel();
}
