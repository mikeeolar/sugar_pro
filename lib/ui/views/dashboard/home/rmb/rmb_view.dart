import 'package:sugar_pros/core/utils/exports.dart';
import 'package:sugar_pros/ui/views/dashboard/home/rmb/rmb_page1.dart';
import 'package:sugar_pros/ui/views/dashboard/home/rmb/rmb_page2.dart';
import 'package:sugar_pros/ui/views/dashboard/home/rmb/rmb_page3.dart';
import 'package:sugar_pros/ui/views/dashboard/home/rmb/rmb_page4.dart';
import 'package:sugar_pros/ui/views/dashboard/home/rmb/rmb_viewmodel.dart';

class RmbView extends StackedView<RmbViewModel> {
  const RmbView({super.key});

  @override
  Widget builder(BuildContext context, RmbViewModel viewModel, Widget? child) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: Utils.light,
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
                      children: [RmbPage1(), RmbPage2(), RmbPage3(), RmbPage4()],
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
  RmbViewModel viewModelBuilder(BuildContext context) => RmbViewModel();
}
