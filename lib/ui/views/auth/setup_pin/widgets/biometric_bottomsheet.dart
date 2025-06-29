import 'package:sugar_pros/core/utils/exports.dart';

class BiometricBottomsheet extends StatelessWidget {
  const BiometricBottomsheet({super.key, required this.onEnable, required this.onLater});

  final Function onLater;
  final Function onEnable;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400.h,
      width: double.infinity,
      padding: EdgeInsets.only(top: 20.h),
      color: Theme.of(context).colorScheme.surface,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 18.w),
        child: Column(
          children: [
            Align(alignment: Alignment.centerRight, child: InkWell(
               onTap: () => Navigator.of(context).pop(),
              child: Image.asset('close'.png, height: 32.h))),
            Image.asset('enable-biometrics'.png, height: 80.h),
            20.verticalSpace,
            Text(
              'Enable Biometrics',
              textAlign: TextAlign.center,
              style: BrandTextStyles.semiBold.copyWith(fontSize: 20.sp, color: hexColor('#041915')),
            ),
            Text(
              'Face ID is a convenient and safe method of signing Into your account',
              textAlign: TextAlign.center,
              style: BrandTextStyles.regular.copyWith(fontSize: 16.sp, color: hexColor('#64748B')),
            ),
            40.verticalSpace,
            Row(
              children: [
                Expanded(
                  child: CustomButton(
                    onTap: () => onLater(),
                    title: 'Later',
                    backgroundColor: hexColor('#E6EBF0'),
                    textColor: hexColor('#041915'),
                  ),
                ),
                10.horizontalSpace,
                Expanded(child: CustomButton(onTap: () => onEnable(), title: 'Enable')),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
