import 'package:flutter/material.dart';
import 'package:houdou_app/core/utils/size_utils.dart';
import 'package:houdou_app/localization/app_localization.dart';
import 'package:houdou_app/presentation/choose_screen/choose_screen.dart';
import 'package:houdou_app/presentation/register_screen/register_screen.dart';
import '../../core/app_export.dart';
import '../../core/utils/image_constant.dart';
import '../../core/utils/navigator_service.dart';
import '../../core/utils/validation_functions.dart';
import '../../routes/app_routes.dart';
import '../../theme/custom_text_style.dart';
import '../../theme/theme_helper.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_icon_button.dart';
import '../../widgets/custom_image_view.dart';
import '../../widgets/custom_outlined_button.dart';
import '../../widgets/custom_text_form_field.dart';
import '../home_screen/home_screen.dart';
import 'bloc/login_bloc.dart';
import 'models/login_model.dart';


// ignore_for_file: must_be_immutable
class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<LoginBloc>(
        create: (context) => LoginBloc(LoginState(loginModelObj: LoginModel()))
          ..add(LoginInitialEvent()),
        child: LoginScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Form(
                key: _formKey,
                child: Container(
                    width: double.maxFinite,
                    padding:
                        EdgeInsets.only(left: 16.h, top: 68.v, right: 16.h),
                    child: Padding(
                      padding: EdgeInsets.only(left: 70.0.h,right: 70.h),
                      child: Column(children: [
                        SizedBox(height: 100.v,),
                        _buildPageHeader(context),
                        SizedBox(height: 28.v),
                        BlocSelector<LoginBloc, LoginState,
                                TextEditingController?>(
                            selector: (state) => state.emailController,
                            builder: (context, emailController) {
                              return Container(
                                decoration: BoxDecoration(
                                  border: Border.all(width: 1.5, color: Colors.black),
                                ),
                                child: CustomTextFormField(
                                    controller: emailController,
                                    hintText: "lbl_email".tr,
                                    textInputType: TextInputType.emailAddress,
                                    prefix: Container(
                                        margin: EdgeInsets.fromLTRB(
                                            16.h, 12.v, 10.h, 12.v),
                                        child: CustomImageView(
                                            imagePath: ImageConstant.imgMail,
                                            height: 24.adaptSize,
                                            width: 24.adaptSize)),
                                    prefixConstraints:
                                        BoxConstraints(maxHeight: 48.v),
                                    validator: (value) {
                                      if (value == null ||
                                          (!isValidEmail(value,
                                              isRequired: true))) {
                                        return "err_msg_please_enter_valid_email"
                                            .tr;
                                      }
                                      return null;
                                    },
                                    contentPadding: EdgeInsets.only(
                                        top: 15.v, right: 30.h, bottom: 15.v)),
                              );
                            }),
                        SizedBox(height: 20.v),
                        BlocSelector<LoginBloc, LoginState,
                                TextEditingController?>(
                            selector: (state) => state.passwordController,
                            builder: (context, passwordController) {
                              return Container(
                                decoration: BoxDecoration(
                                  border: Border.all(width: 1.5, color: Colors.black),
                                ),
                                child: CustomTextFormField(
                                    controller: passwordController,
                                    hintText: "mot de passe".tr,
                                    textInputAction: TextInputAction.done,
                                    textInputType: TextInputType.visiblePassword,
                                    prefix: Container(
                                        margin: EdgeInsets.fromLTRB(
                                            16.h, 12.v, 10.h, 12.v),
                                        child: CustomImageView(
                                            imagePath: ImageConstant.imgLock,
                                            height: 24.adaptSize,
                                            width: 24.adaptSize)),
                                    prefixConstraints:
                                        BoxConstraints(maxHeight: 48.v),
                                    validator: (value) {
                                      if (value == null ||
                                          (!isValidPassword(value,
                                              isRequired: true))) {
                                        return "err_msg_please_enter_valid_password"
                                            .tr;
                                      }
                                      return null;
                                    },
                                    obscureText: true,
                                    contentPadding: EdgeInsets.only(
                                        top: 15.v, right: 30.h, bottom: 15.v)),
                              );
                            }),
                        SizedBox(height: 4.v),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            InkWell(
                              onTap: (){
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => ChooseScreen(),
                                  ),
                                );
                              },
                              child: Text("Mot de passe oublié ?",
                                  style: CustomTextStyles.labelLargePrimary),
                            ),
                          ],
                        ),
                        SizedBox(height: 7.v),

                        InkWell(
                            onTap: () {
                              onTapRegister(context);
                            },
                            child: RichText(
                                text: TextSpan(children: [
                                  TextSpan(
                                      text: "msg_don_t_have_an_account2".tr,
                                      style: theme.textTheme.bodySmall),
                                  TextSpan(text: " "),
                                  TextSpan(
                                      text: "lbl_register".tr,
                                      style: CustomTextStyles.labelLargePrimary_1)
                                ]),
                                textAlign: TextAlign.left)),
                        SizedBox(height: 50.v),

                        CustomElevatedButton(
                          buttonTextStyle: TextStyle(
                              color: Color(0xff8a837e)
                          ),
                            text: "CONNECTEZ VOUS",
                            onPressed: () {
                              onTapSignIn(context);
                            }),
                      ]),
                    )))));
  }

  /// Section Widget
  Widget _buildPageHeader(BuildContext context) {
    return Column(children: [
      Container(
        height: 200.v,
        width: 200.h,
        child: Image.asset(ImageConstant.imgLogoBlack),
      )
    ]);
  }



  /// Navigates to the dashboardContainerScreen when the action is triggered.
  onTapSignIn(BuildContext context) {
    //todo dashboard navigation
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => HomeScreen())
    );

  }
  onTapRegister(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.registerScreen,
    );
  }


}
