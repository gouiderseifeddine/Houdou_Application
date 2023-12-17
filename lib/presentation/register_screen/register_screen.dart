import 'package:houdou_app/core/utils/size_utils.dart';
import 'package:houdou_app/localization/app_localization.dart';

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
import '../../widgets/custom_text_form_field.dart';
import 'bloc/register_bloc.dart';
import 'models/register_model.dart';

import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class RegisterScreen extends StatelessWidget {
  RegisterScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<RegisterBloc>(
        create: (context) =>
            RegisterBloc(RegisterState(registerModelObj: RegisterModel()))
              ..add(RegisterInitialEvent()),
        child: RegisterScreen());
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
                    padding: EdgeInsets.symmetric(horizontal: 16.h),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 70.0, right: 70),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            _buildPageHeader(context),
                            SizedBox(height: 40.v),
                            _buildFullName2(context),
                            SizedBox(height: 20.v),
                            _buildFullName(context),
                            SizedBox(height: 20.v),
                            _buildEmail(context),
                            SizedBox(height: 20.v),
                            _buildPassword(context),
                            SizedBox(height: 20.v),
                            _buildPhone(context),
                            SizedBox(height: 50.v),
                            _buildSignUp(context),
                            SizedBox(height: 20.v),
                            InkWell(
                              onTap: () {
                                onTapSignIn(context);
                              },
                              child: RichText(
                                  text: TextSpan(children: [
                                    TextSpan(
                                        text: "déja un membre ? ",
                                        style: theme.textTheme.bodySmall),
                                    TextSpan(text: " "),
                                    TextSpan(
                                        text: "connectez vous",
                                        style: CustomTextStyles
                                            .labelLargePrimary_1)
                                  ]),
                                  textAlign: TextAlign.left),
                            ),
                            SizedBox(height: 5.v)
                          ]),
                    )))));
  }

  /// Section Widget
  Widget _buildPageHeader(BuildContext context) {
    return Column(children: [
      Container(
        height: 100.v,
        width: 200.h,
        child: Image.asset(ImageConstant.imgLogoBlack),
      )
    ]);
  }

  /// Section Widget
  Widget _buildFullName(BuildContext context) {
    return BlocSelector<RegisterBloc, RegisterState, TextEditingController?>(
        selector: (state) => state.fullNameController,
        builder: (context, fullNameController) {
          return Container(
            decoration: BoxDecoration(
              border: Border.all(width: 1.5, color: Colors.black),
            ),
            child: CustomTextFormField(
                controller: fullNameController,
                hintText: "prenom",
                prefix: Container(
                    margin: EdgeInsets.fromLTRB(16.h, 12.v, 10.h, 12.v),
                    child: CustomImageView(
                        imagePath: ImageConstant.imgUser,
                        height: 24.adaptSize,
                        width: 24.adaptSize)),
                prefixConstraints: BoxConstraints(maxHeight: 48.v),
                validator: (value) {
                  if (!isText(value)) {
                    return "err_msg_please_enter_valid_text".tr;
                  }
                  return null;
                },
                contentPadding:
                    EdgeInsets.only(top: 15.v, right: 30.h, bottom: 15.v)),
          );
        });
  }

  Widget _buildFullName2(BuildContext context) {
    return BlocSelector<RegisterBloc, RegisterState, TextEditingController?>(
        selector: (state) => state.fullName2Controller,
        builder: (context, fullName2Controller) {
          return Container(
            decoration: BoxDecoration(
              border: Border.all(width: 1.5, color: Colors.black),
            ),
            child: CustomTextFormField(
                controller: fullName2Controller,
                hintText: "NOM",
                prefix: Container(
                    margin: EdgeInsets.fromLTRB(16.h, 12.v, 10.h, 12.v),
                    child: CustomImageView(
                        imagePath: ImageConstant.imgUser,
                        height: 24.adaptSize,
                        width: 24.adaptSize)),
                prefixConstraints: BoxConstraints(maxHeight: 48.v),
                validator: (value) {
                  if (!isText(value)) {
                    return "err_msg_please_enter_valid_text".tr;
                  }
                  return null;
                },
                contentPadding:
                    EdgeInsets.only(top: 15.v, right: 30.h, bottom: 15.v)),
          );
        });
  }

  /// Section Widget
  Widget _buildEmail(BuildContext context) {
    return BlocSelector<RegisterBloc, RegisterState, TextEditingController?>(
        selector: (state) => state.emailController,
        builder: (context, emailController) {
          return Container(
            decoration: BoxDecoration(
              border: Border.all(width: 1.5, color: Colors.black),
            ),
            child: CustomTextFormField(
                controller: emailController,
                hintText: "lbl_your_email".tr,
                textInputType: TextInputType.emailAddress,
                prefix: Container(
                    margin: EdgeInsets.fromLTRB(16.h, 12.v, 10.h, 12.v),
                    child: CustomImageView(
                        imagePath: ImageConstant.imgMail,
                        height: 24.adaptSize,
                        width: 24.adaptSize)),
                prefixConstraints: BoxConstraints(maxHeight: 48.v),
                validator: (value) {
                  if (value == null ||
                      (!isValidEmail(value, isRequired: true))) {
                    return "err_msg_please_enter_valid_email".tr;
                  }
                  return null;
                },
                contentPadding:
                    EdgeInsets.only(top: 15.v, right: 30.h, bottom: 15.v)),
          );
        });
  }

  /// Section Widget
  Widget _buildPassword(BuildContext context) {
    return BlocSelector<RegisterBloc, RegisterState, TextEditingController?>(
        selector: (state) => state.passwordController,
        builder: (context, passwordController) {
          return Container(
            decoration: BoxDecoration(
              border: Border.all(width: 1.5, color: Colors.black),
            ),
            child: CustomTextFormField(
                controller: passwordController,
                hintText: "lbl_password".tr,
                textInputType: TextInputType.visiblePassword,
                prefix: Container(
                    margin: EdgeInsets.fromLTRB(16.h, 12.v, 10.h, 12.v),
                    child: CustomImageView(
                        imagePath: ImageConstant.imgLock,
                        height: 24.adaptSize,
                        width: 24.adaptSize)),
                prefixConstraints: BoxConstraints(maxHeight: 48.v),
                validator: (value) {
                  if (value == null ||
                      (!isValidPassword(value, isRequired: true))) {
                    return "err_msg_please_enter_valid_password".tr;
                  }
                  return null;
                },
                obscureText: true,
                contentPadding:
                    EdgeInsets.only(top: 15.v, right: 30.h, bottom: 15.v)),
          );
        });
  }

  /// Section Widget
  Widget _buildPhone(BuildContext context) {
    return BlocSelector<RegisterBloc, RegisterState, TextEditingController?>(
        selector: (state) => state.phoneController,
        builder: (context, phoneController) {
          return Container(
            decoration: BoxDecoration(
              border: Border.all(width: 1.5, color: Colors.black),
            ),
            child: CustomTextFormField(
                controller: phoneController,
                textInputType: TextInputType.phone,
                hintText: "phone",
                prefix: Container(
                    margin: EdgeInsets.fromLTRB(16.h, 12.v, 10.h, 12.v),
                    child: CustomImageView(
                        imagePath: ImageConstant.imgphone,
                        height: 24.adaptSize,
                        width: 24.adaptSize)),
                prefixConstraints: BoxConstraints(maxHeight: 48.v),
                validator: (value) {
                  if (value == null ||
                      (!isValidPassword(value, isRequired: true))) {
                    return "err_msg_please_enter_valid_password".tr;
                  }
                  return null;
                },
                contentPadding:
                    EdgeInsets.only(top: 15.v, right: 30.h, bottom: 15.v)),
          );
        });
  }

  /// Section Widget
  Widget _buildSignUp(BuildContext context) {
    return CustomElevatedButton(
      text: "CONTINUEZ",
      onPressed: () {},
    );
  }

  /// Navigates to the dashboardContainerScreen when the action is triggered.
  onTapSignUp(BuildContext context) {
    //todo dashboard mazel waktou
  }
  onTapSignIn(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.loginScreen,
    );
  }
}
