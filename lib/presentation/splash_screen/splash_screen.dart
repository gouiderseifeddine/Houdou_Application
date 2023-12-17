import '../../core/app_export.dart';
import '../../core/utils/image_constant.dart';
import '../../core/utils/size_utils.dart';
import '../../theme/theme_helper.dart';
import '../../widgets/custom_image_view.dart';
import 'bloc/splash_bloc.dart';
import 'models/splash_model.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<SplashBloc>(
        create: (context) =>
            SplashBloc(SplashState(splashModelObj: SplashModel()))
              ..add(SplashInitialEvent()),
        child: SplashScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return BlocBuilder<SplashBloc, SplashState>(builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              body: Stack(
                fit: StackFit.expand,
                children: [
                  Image.asset(ImageConstant.imgSplashBackground,fit: BoxFit.cover,),
                  SizedBox(
                      width: double.maxFinite,
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(height: 5.v),
                            CustomImageView(
                                imagePath: ImageConstant.imgLogo,
                                fit: BoxFit.fill,
                                height: 120.adaptSize,
                                width: 250.adaptSize)
                          ]))
                ],
              )
          ));
    });
  }
}
