
import 'package:sugar_pros/core/utils/exports.dart';
import 'package:sugar_pros/ui/views/dashboard/learn/learn_viewmodel.dart';

class LearnView extends StackedView<LearnViewModel> {
 const LearnView({super.key});

 @override
 Widget builder(BuildContext context, LearnViewModel viewModel, Widget? child) {
   return const Scaffold();
 }

 @override
 LearnViewModel viewModelBuilder(BuildContext context) => LearnViewModel();
}