
import 'package:sugar_pros/core/utils/exports.dart';
import 'package:sugar_pros/ui/views/dashboard/activity/activity_viewmodel.dart';

class ActivityView extends StackedView<ActivityViewModel> {
 const ActivityView({super.key});

 @override
 Widget builder(BuildContext context, ActivityViewModel viewModel, Widget? child) {
   return const Scaffold();
 }

 @override
 ActivityViewModel viewModelBuilder(BuildContext context) => ActivityViewModel();
}