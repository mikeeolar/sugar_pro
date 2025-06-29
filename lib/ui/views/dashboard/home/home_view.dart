import 'package:sugar_pros/core/utils/exports.dart';
import 'package:sugar_pros/ui/views/dashboard/dashboard_viewmodel.dart';
import 'package:sugar_pros/ui/views/dashboard/home/home_viewmodel.dart';
import 'package:sugar_pros/ui/views/dashboard/home/widgets/activity_card.dart';
import 'package:sugar_pros/ui/views/dashboard/home/widgets/home_menu_item.dart';
import 'package:sugar_pros/ui/views/dashboard/home/widgets/wallet_header.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return ReactivePartialBuild<DashboardViewModel>(
      builder:
          (context, parentModel) => ViewModelBuilder<HomeViewModel>.reactive(
            viewModelBuilder: () => HomeViewModel(),
            builder:
                (context, viewModel, child) => AnnotatedRegion<SystemUiOverlayStyle>(
                  value: Utils.light,
                  child: Scaffold(
                    backgroundColor: hexColor('#f1f5f9'),
                    body: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        WalletHeader(parentModel: parentModel),
                        Expanded(
                          child: SingleChildScrollView(
                            child: Column(
                              children: [
                                Container(
                                  padding: EdgeInsets.symmetric(vertical: 10.h),
                                  width: double.infinity,
                                  color: hexColor('#D2FF4D'),
                                  child: Center(
                                    child: Text(
                                      'Activate wallet to start carrying out transactions',
                                      style: BrandTextStyles.medium.copyWith(
                                        color: hexColor('#041915'),
                                        fontSize: 14.sp,
                                      ),
                                    ),
                                  ),
                                ),
                                20.verticalSpace,
                                Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 17.w),
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          Expanded(
                                            child: HomeMenuItem(
                                              title: 'Buy RMB',
                                              onTap: () => viewModel.navigateToRmb(),
                                            ),
                                          ),
                                          15.horizontalSpace,
                                          Expanded(
                                            child: HomeMenuItem(
                                              title: 'Source Products',
                                              onTap: () {},
                                            ),
                                          ),
                                        ],
                                      ),
                                      20.verticalSpace,
                                      ActivityCard(),
                                    ],
                                  ),
                                ),
                                20.verticalSpace,
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
          ),
    );
  }
}
