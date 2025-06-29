
import 'package:sugar_pros/core/utils/exports.dart';
import 'package:sugar_pros/ui/views/dashboard/profile/profile_viewmodel.dart';

class ProfileView extends StackedView<ProfileViewModel> {
 const ProfileView({super.key});

 @override
 Widget builder(BuildContext context, ProfileViewModel viewModel, Widget? child) {
   return const Scaffold();
 }

 @override
 ProfileViewModel viewModelBuilder(BuildContext context) => ProfileViewModel();
}