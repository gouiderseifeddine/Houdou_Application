// ignore_for_file: must_be_immutable

part of 'register_bloc.dart';

/// Represents the state of Register in the application.
class RegisterState extends Equatable {
  RegisterState({
    this.fullNameController,
    this.emailController,
    this.passwordController,
    this.phoneController,
    this.registerModelObj,
  });

  TextEditingController? fullNameController;

  TextEditingController? fullName2Controller;

  TextEditingController? emailController;

  TextEditingController? passwordController;

  TextEditingController? phoneController;

  TextEditingController? passwordController1;

  RegisterModel? registerModelObj;

  @override
  List<Object?> get props => [
        fullNameController,
        emailController,
        passwordController,
        phoneController,
        registerModelObj,
      ];
  RegisterState copyWith({
    TextEditingController? fullNameController,
    TextEditingController? emailController,
    TextEditingController? passwordController,
    TextEditingController? phoneController,
    RegisterModel? registerModelObj,
  }) {
    return RegisterState(
      fullNameController: fullNameController ?? this.fullNameController,
      emailController: emailController ?? this.emailController,
      phoneController: phoneController ?? this.phoneController,
      passwordController: passwordController ?? this.passwordController,
      registerModelObj: registerModelObj ?? this.registerModelObj,
    );
  }
}
