import 'package:sugar_pros/core/utils/exports.dart';
import 'package:sugar_pros/ui/views/dashboard/dashboard_viewmodel.dart';
import 'package:sugar_pros/ui/views/dashboard/home/home_viewmodel.dart';
import 'package:sugar_pros/ui/views/dashboard/home/widgets/activate_wallet_sheet.dart';

class WalletHeader extends ViewModelWidget<HomeViewModel> {
  const WalletHeader({super.key, required this.parentModel});

  final DashboardViewModel parentModel;

  @override
  Widget build(BuildContext context, HomeViewModel viewModel) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 17.w),
      width: double.infinity,
      color: hexColor('#041915'),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          60.verticalSpace,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () {
                  parentModel.setIndex(4);
                },
                child: CircleAvatar(
                  radius: 22.r,
                  backgroundColor: const Color(0XFFFEFBEA),
                  child: Text(
                    'MO',
                    style: BrandTextStyles.medium.copyWith(
                      color: const Color(0xFF000B09),
                      fontSize: 15.sp,
                    ),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 8.h),
                decoration: ShapeDecoration(
                  color: hexColor('#1D302C'),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(78.r)),
                ),
                child: Text(
                  '₦220.50/RMB',
                  style: BrandTextStyles.medium.copyWith(color: Colors.white, fontSize: 16.sp, fontFamilyFallback: ['Inter']),
                ),
              ),
            ],
          ),
          20.verticalSpace,
          Text(
            'Wallet Balance',
            style: BrandTextStyles.medium.copyWith(color: hexColor('#CBD5E1'), fontSize: 14.sp),
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(bottom: 10.h),
                child: Text(
                  'N',
                  style: BrandTextStyles.medium.copyWith(
                    color: hexColor('#64748B'),
                    fontSize: 20.sp,
                  ),
                ),
              ),
              5.horizontalSpace,
              Text(
                '0.00',
                style: BrandTextStyles.medium.copyWith(color: Colors.white, fontSize: 40.sp),
              ),
            ],
          ),
          20.verticalSpace,
          CustomButton(
            onTap: () {
              bottomModalSetup(
                context: context,
                child: ActivateWalletSheet(
                  onProceed: () {
                    Navigator.of(context).pop();
                    viewModel.navigateToActivateWallet();
                  },
                ),
              );
            },
            title: 'Activate Wallet',
          ),
          30.verticalSpace,
        ],
      ),
    );
  }
}
