import 'package:canecer_scan/screens/change_password_screen/change_model_model.dart';
import 'package:canecer_scan/screens/home_screen/home_model.dart';
import 'package:canecer_scan/screens/profile_screen/profile_model.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

import '../../screens/delete_account_screen/delete_account_model.dart';
import '../../screens/onboarding_screen/onboarding_model.dart';
import '../../screens/profile_details_screen/profile_details_modle.dart';
import '../../screens/splash_screen/splash_model.dart';

List<SingleChildWidget> providers = [
  ChangeNotifierProvider<SplashModel>(create: (_) => SplashModel()),
  ChangeNotifierProvider<OnboardingModel>(create: (_) => OnboardingModel()),
  ChangeNotifierProvider<HomeViewModel>(create: (_) => HomeViewModel()),
  ChangeNotifierProvider<ProfileModel>(create: (_) => ProfileModel()),
  ChangeNotifierProvider<ProfileDeteilModel>(
      create: (_) => ProfileDeteilModel()),
  ChangeNotifierProvider<DeleteAccountModel>(
      create: (_) => DeleteAccountModel()),
  ChangeNotifierProvider<ChangePasswordModel>(
      create: (_) => ChangePasswordModel()),
];
