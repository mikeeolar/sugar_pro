import 'package:sugar_pros/core/utils/exports.dart';
import 'package:sugar_pros/ui/views/auth/auth_viewmodel.dart';

class AuthView extends StackedView<AuthViewModel> {
  const AuthView({super.key});

  @override
  Widget builder(BuildContext context, AuthViewModel viewModel, Widget? child) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 18.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 30.h),
                Text(
                  'Select your identity',
                  style: BrandTextStyles.semiBold.copyWith(
                    color: Colors.black,
                    fontSize: 24.sp,
                    height: 0,
                  ),
                ),
                SizedBox(height: 27.h),
                GestureDetector(
                  onTap: () {
                    viewModel.navigateToPatientRegister();
                  },
                  child: Container(
                    width: double.infinity,
                    padding: EdgeInsets.fromLTRB(13.w, 13.h, 13.w, 23.h),
                    decoration: ShapeDecoration(
                      color: const Color(0xFFF7F7F7),
                      shape: RoundedRectangleBorder(
                        side: const BorderSide(
                          width: 0.50,
                          color: Color(0xFFCBCBCB),
                        ),
                        borderRadius: BorderRadius.circular(12.sp),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset('patient1'.png, height: 200.h),
                        SizedBox(height: 11.h),
                        Text(
                          'Patient',
                          style: BrandTextStyles.semiBold.copyWith(
                            color: Colors.black,
                            fontSize: 18.sp,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 27.h),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    width: double.infinity,
                    padding: EdgeInsets.fromLTRB(13.w, 13.h, 13.w, 23.h),
                    decoration: ShapeDecoration(
                      color: const Color(0xFFF7F7F7),
                      shape: RoundedRectangleBorder(
                        side: const BorderSide(
                          width: 0.50,
                          color: Color(0xFFCBCBCB),
                        ),
                        borderRadius: BorderRadius.circular(12.sp),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset('provider1'.png, height: 200.h),
                        SizedBox(height: 11.h),
                        Text(
                          'Provider',
                          style: BrandTextStyles.semiBold.copyWith(
                            color: Colors.black,
                            fontSize: 18.sp,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 80.h),
                Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: 'By continuing, you agree to our ',
                        style: BrandTextStyles.regular.copyWith(
                          color: Colors.black,
                          fontSize: 18.sp,
                        ),
                      ),
                      TextSpan(
                        text: 'terms and condition',
                        style: BrandTextStyles.regular.copyWith(
                          color: const Color(0xFFE3904C),
                          fontSize: 18.sp,
                        ),
                      ),
                      TextSpan(
                        text: ' and ',
                        style: BrandTextStyles.regular.copyWith(
                          color: Colors.black,
                          fontSize: 18.sp,
                        ),
                      ),
                      TextSpan(
                        text: 'privacy policy.',
                        style: BrandTextStyles.regular.copyWith(
                          color: const Color(0xFFE3904C),
                          fontSize: 18.sp,
                          fontFamily: 'Euclid Circular A',
                          fontWeight: FontWeight.w400,
                          height: 0.08,
                        ),
                      ),
                    ],
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  AuthViewModel viewModelBuilder(BuildContext context) => AuthViewModel();
}
