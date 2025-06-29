import 'package:sugar_pros/core/utils/exports.dart';
import 'package:sugar_pros/ui/views/dashboard/home/rmb/rmb_viewmodel.dart';

class NigerianWallet extends StatelessWidget {
  const NigerianWallet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ReactivePartialBuild<RmbViewModel>(
      builder: (context, viewModel) => SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Amount of RMB',
              style: BrandTextStyles.medium.copyWith(
                fontSize: 14.sp,
                color: hexColor('#E6E8E8'),
              ),
            ),
            5.verticalSpace,
            TextFormField(
              onChanged: (val) {},
              cursorColor: Colors.white,
              textDirection:
                  TextDirection.rtl, // Ensures the input text is RTL
              textAlign:
                  TextAlign.right, // Aligns input text to the right
              style: BrandTextStyles.bold.copyWith(
                fontSize: 20.sp,
                color: hexColor('#D2FF4D'),
              ),
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.transparent,
                contentPadding: EdgeInsets.symmetric(vertical: 14.h),
                border: InputBorder.none,
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                    color: Colors.transparent,
                  ),
                  borderRadius: BorderRadius.circular(100.r),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                    color: Colors.transparent,
                  ),
                  borderRadius: BorderRadius.circular(100.r),
                ),
                prefixIconConstraints: BoxConstraints(
                  minWidth: 35.w,
                  minHeight: 35.h,
                ),
                prefixIcon: Padding(
                  padding: EdgeInsets.only(left: 0.w, right: 5.w),
                  child: Image.asset('rmb'.png, height: 35.h),
                ),
                hintText: 'Enter amount',
                hintTextDirection:
                    TextDirection.rtl, // Ensures hint also follows RTL
                hintStyle: BrandTextStyles.bold.copyWith(
                  fontSize: 20.sp,
                  color: hexColor('#D2FF4D'),
                ),
              ),
            ),
            20.verticalSpace,
            Container(
              padding: EdgeInsets.symmetric(
                vertical: 20.h,
                horizontal: 15.w,
              ),
              decoration: ShapeDecoration(
                color: hexColor('#1D302C'),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.r),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Exchange Rate Today:',
                    style: BrandTextStyles.regular.copyWith(
                      fontSize: 14.sp,
                      color: hexColor('#B4BAB9'),
                    ),
                  ),
                  Text(
                    '₦225',
                    style: BrandTextStyles.medium.copyWith(
                      fontSize: 16.sp,
                      color: hexColor('#F1F5F9'),
                      fontFamilyFallback: ['Inter']
                    ),
                  ),
                ],
              ),
            ),
            20.verticalSpace,
            Text(
              'You pay',
              style: BrandTextStyles.medium.copyWith(
                fontSize: 14.sp,
                color: hexColor('#E6E8E8'),
              ),
            ),
            5.verticalSpace,
            TextFormField(
              onChanged: (val) {},
              cursorColor: Colors.white,
              textDirection:
                  TextDirection.rtl, // Ensures the input text is RTL
              textAlign:
                  TextAlign.right, // Aligns input text to the right
              style: BrandTextStyles.bold.copyWith(
                fontSize: 20.sp,
                color: hexColor('#D2FF4D'),
              ),
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.transparent,
                contentPadding: EdgeInsets.symmetric(vertical: 14.h),
                border: InputBorder.none,
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                    color: Colors.transparent,
                  ),
                  borderRadius: BorderRadius.circular(100.r),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                    color: Colors.transparent,
                  ),
                  borderRadius: BorderRadius.circular(100.r),
                ),
                prefixIconConstraints: BoxConstraints(
                  minWidth: 35.w,
                  minHeight: 35.h,
                ),
                prefixIcon: Padding(
                  padding: EdgeInsets.only(left: 0.w, right: 5.w),
                  child: Image.asset('ngn'.png, height: 35.h),
                ),
                hintText: 'Enter amount',
                hintTextDirection:
                    TextDirection.rtl, // Ensures hint also follows RTL
                hintStyle: BrandTextStyles.bold.copyWith(
                  fontSize: 20.sp,
                  color: hexColor('#D2FF4D'),
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: 'Wallet Balance: ',
                      style: BrandTextStyles.regular.copyWith(
                        fontSize: 12.sp,
                        color: hexColor('#B4BAB9'),
                      ),
                    ),
                    TextSpan(
                      text: '₦660,000.00',
                      style: BrandTextStyles.bold.copyWith(
                        color: hexColor('#B4BAB9'),
                        fontSize: 12.sp,
                        fontFamilyFallback: ['Inter']
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}