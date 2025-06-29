// ignore_for_file: deprecated_member_use

import 'package:sugar_pros/core/utils/exports.dart';
import 'package:sugar_pros/ui/views/dashboard/activity/activity_view.dart';
import 'package:sugar_pros/ui/views/dashboard/dashboard_viewmodel.dart';
import 'package:flutter/scheduler.dart';
import 'package:sugar_pros/ui/views/dashboard/home/home_view.dart';
import 'package:sugar_pros/ui/views/dashboard/learn/learn_view.dart';
import 'package:sugar_pros/ui/views/dashboard/profile/profile_view.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key, this.index});

  final int? index;

  void openMenu() {}

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<DashboardViewModel>.reactive(
      viewModelBuilder: () => DashboardViewModel(),
      onViewModelReady: (viewModel) {
        SchedulerBinding.instance.addPostFrameCallback((_) {
          viewModel.setIndex(index ?? 0);
        });
      },
      builder:
          (context, viewModel, child) => AnnotatedRegion<SystemUiOverlayStyle>(
            value: context.isDarkMode ? Utils.darkTheme : Utils.lightTheme,
            child: WillPopScope(
              onWillPop: () async {
                return false;
              },
              child: Stack(
                children: [
                  Scaffold(
                    body: [
                      const HomeView(),
                      const ActivityView(),
                      const LearnView(),
                      const ProfileView(),
                    ].elementAt(viewModel.currentIndex),
                    bottomNavigationBar: SafeArea(
                      child: Padding(
                        padding: EdgeInsets.only(bottom: 0.h),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10.r),
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border(top: BorderSide(color: hexColor('#E6EBF0'), width: 1)),
                            ),
                            child: BottomNavigationBar(
                              backgroundColor: Colors.white,
                              type: BottomNavigationBarType.fixed,
                              selectedLabelStyle: BrandTextStyles.medium.copyWith(
                                fontSize: 0.sp,
                                color: const Color(0xFFF5B905),
                              ),
                              unselectedLabelStyle: BrandTextStyles.medium.copyWith(
                                fontSize: 13.sp,
                                color: const Color(0xFFA5A5A5),
                              ),
                              selectedItemColor: const Color(0xFFF5B905),
                              unselectedItemColor: const Color(0xFFA5A5A5),
                              elevation: 1,
                              currentIndex: viewModel.currentIndex,
                              onTap: viewModel.setIndex,
                              items: [
                                bottomBarItem(
                                  context: context,
                                  name: '',
                                  iconPath: 'home'.svg,
                                  activeIconPath: 'home-bold'.svg,
                                  semanticLabel: 'Home',
                                  activeSemanticLabel: 'Home Navigator is Active',
                                ),
                                bottomBarItem(
                                  context: context,
                                  name: '',
                                  iconPath: 'activity'.svg,
                                  activeIconPath: 'activity'.svg,
                                  semanticLabel: 'Activity',
                                  activeSemanticLabel: 'Transaction Navigator is Active',
                                ),
                                bottomBarItem(
                                  context: context,
                                  name: '',
                                  isPng: true,
                                  iconPath: 'ai'.png,
                                  activeIconPath: 'ai'.png,
                                  semanticLabel: 'Transaction',
                                  activeSemanticLabel: 'Transaction Navigator is Active',
                                ),
                                bottomBarItem(
                                  context: context,
                                  name: '',
                                  iconPath: 'book'.svg,
                                  activeIconPath: 'book-bold'.svg,
                                  semanticLabel: 'Support',
                                  activeSemanticLabel: 'Support Navigator is Active',
                                ),
                                bottomBarItem(
                                  context: context,
                                  name: '',
                                  iconPath: 'menu'.svg,
                                  activeIconPath: 'menu-bold'.svg,
                                  semanticLabel: 'More',
                                  activeSemanticLabel: 'More Navigator is Active',
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  IgnorePointer(
                    ignoring: true,
                    child: AnimatedContainer(
                      duration: 300.milliseconds,
                      width: double.infinity,
                      height: double.infinity,
                      color: viewModel.showMenu ? Colors.black.withOpacity(.5) : Colors.transparent,
                    ),
                  ),
                ],
              ),
            ),
          ),
    );
  }

  BottomNavigationBarItem bottomBarItem({
    required BuildContext context,
    required String name,
    required String iconPath,
    required String activeIconPath,
    required String semanticLabel,
    required String activeSemanticLabel,
    bool? isPng,
  }) {
    return BottomNavigationBarItem(
      label: name,
      icon: Column(
        children: [
          5.verticalSpace,
          if (isPng ?? false)
            Image.asset(iconPath)
          else
            SvgPicture.asset(
              iconPath,
              height: 20.h,
              width: 20.h,
              color: const Color(0xFF8B8B8B),
              semanticsLabel: semanticLabel,
              fit: BoxFit.fill,
            ),
        ],
      ),
      activeIcon: Column(
        children: [
          5.verticalSpace,
          if (isPng ?? false)
            Image.asset(activeIconPath)
          else
            SvgPicture.asset(
              activeIconPath,
              height: 20.h,
              width: 20.h,
              color: BrandColors.primary,
              semanticsLabel: activeSemanticLabel,
            ),
        ],
      ),
    );
  }
}
