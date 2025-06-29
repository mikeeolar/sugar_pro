
import 'package:sugar_pros/core/utils/exports.dart';
import 'package:sugar_pros/ui/views/dashboard/home/activate_wallet/tier1/tier1_page1.dart';
import 'package:sugar_pros/ui/views/dashboard/home/activate_wallet/tier1/tier1_page2.dart';
import 'package:sugar_pros/ui/views/dashboard/home/activate_wallet/tier1/tier1_page3.dart';
import 'package:sugar_pros/ui/views/dashboard/home/activate_wallet/tier1/tier1_viewmodel.dart';

class Tier1View extends StackedView<Tier1ViewModel> {
 const Tier1View({super.key});

 @override
 Widget builder(BuildContext context, Tier1ViewModel viewModel, Widget? child) {
   return AnnotatedRegion<SystemUiOverlayStyle>(
      value: context.isDarkMode ? Utils.darkTheme : Utils.lightTheme,
      child: Scaffold(
        backgroundColor: context.isDarkMode ? Colors.black : Colors.white,
        body: Stack(
          children: [
            SizedBox(
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: PageView(
                      physics: const NeverScrollableScrollPhysics(),
                      controller: viewModel.pageController,
                      onPageChanged: (index) {
                        viewModel.setIndex(index);
                        viewModel.activeIndex = index;
                      },
                      children: [
                       Tier1Page1(),
                       Tier1Page2(),
                       Tier1Page3()
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
 }

 @override
 Tier1ViewModel viewModelBuilder(BuildContext context) => Tier1ViewModel();
}