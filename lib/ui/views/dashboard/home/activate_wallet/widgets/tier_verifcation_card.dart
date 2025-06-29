import 'package:sugar_pros/core/utils/exports.dart';
import 'package:sugar_pros/ui/widgets/svg_icon.dart';

class TierVerificationCard extends StatelessWidget {
  const TierVerificationCard({
    super.key,
    required this.title,
    required this.dailyTransactionLimit,
    required this.maxAccountBalance,
    required this.requiredDocuments,
    required this.onTap,
  });

  final String title;
  final String dailyTransactionLimit;
  final String maxAccountBalance;
  final List<String> requiredDocuments;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onTap(),
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 16.h, horizontal: 16.w),
        width: double.infinity,
        decoration: ShapeDecoration(
          color: hexColor('#F8FAFC'),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.r)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  width: 40.w,
                  height: 40.w,
                  decoration: ShapeDecoration(
                    color: hexColor('#e6eeec'),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.r)),
                  ),
                  child: Padding(padding: EdgeInsets.all(10.w), child: SvgIcon('star'.svg)),
                ),
                5.horizontalSpace,
                Text(
                  title,
                  style: BrandTextStyles.semiBold.copyWith(
                    fontSize: 18.sp,
                    color: hexColor('#041915'),
                  ),
                ),
              ],
            ),
            10.verticalSpace,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Daily Transaction Limit',
                  style: BrandTextStyles.regular.copyWith(
                    fontSize: 16.sp,
                    color: hexColor('#334155'),
                  ),
                ),
                Text(
                  dailyTransactionLimit,
                  style: BrandTextStyles.medium.copyWith(
                    fontSize: 16.sp,
                    color: hexColor('#334155'),
                    fontFamilyFallback: ['Inter']
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Maximum Account Balance',
                  style: BrandTextStyles.regular.copyWith(
                    fontSize: 16.sp,
                    color: hexColor('#334155'),
                    fontFamilyFallback: ['Inter']
                  ),
                ),
                Text(
                  maxAccountBalance,
                  style: BrandTextStyles.medium.copyWith(
                    fontSize: 16.sp,
                    color: hexColor('#334155'),
                  ),
                ),
              ],
            ),
            15.verticalSpace,
            Divider(color: hexColor('#E6EBF0')),
            5.verticalSpace,
            Text(
              'Required Documents',
              style: BrandTextStyles.medium.copyWith(fontSize: 14.sp, color: hexColor('#64748B')),
            ),
            Padding(
              padding: EdgeInsets.only(left: 10.w, top: 10.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:
                    requiredDocuments
                        .map(
                          (documents) => Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(top: 5.h),
                                child: Icon(Icons.circle, size: 5.h, color: hexColor('#64748B')),
                              ),
                              10.horizontalSpace,
                              Text(
                                documents,
                                style: BrandTextStyles.medium.copyWith(
                                  fontSize: 14.sp,
                                  color: hexColor('#64748B'),
                                ),
                              ),
                            ],
                          ),
                        )
                        .toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}