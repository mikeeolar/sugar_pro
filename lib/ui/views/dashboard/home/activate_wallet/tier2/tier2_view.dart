
import 'package:sugar_pros/core/utils/exports.dart';
import 'package:sugar_pros/ui/views/dashboard/home/activate_wallet/tier2/tier2_page1.dart';
import 'package:sugar_pros/ui/views/dashboard/home/activate_wallet/tier2/tier2_page2.dart';
import 'package:sugar_pros/ui/views/dashboard/home/activate_wallet/tier2/tier2_page3.dart';
import 'package:sugar_pros/ui/views/dashboard/home/activate_wallet/tier2/tier2_viewmodel.dart';

class Tier2View extends StackedView<Tier2ViewModel> {
 const Tier2View({super.key});

 @override
 Widget builder(BuildContext context, Tier2ViewModel viewModel, Widget? child) {
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
                       Tier2Page1(),
                       Tier2Page2(),
                       Tier2Page3()
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
 Tier2ViewModel viewModelBuilder(BuildContext context) => Tier2ViewModel();
}