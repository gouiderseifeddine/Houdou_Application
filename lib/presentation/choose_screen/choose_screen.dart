import 'package:flutter/material.dart';
import 'package:houdou_app/core/utils/size_utils.dart';

import '../../core/utils/image_constant.dart';
import '../../core/utils/navigator_service.dart';
import '../../routes/app_routes.dart';
import '../../widgets/custom_elevated_button_choose.dart';


class ChooseScreen extends StatelessWidget {
  ChooseScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Column(
          children: [
            SizedBox(height: 320,),
            _buildPageHeader(context),
            SizedBox(height: 60,),
            Padding(
              padding: const EdgeInsets.only(left: 88,right: 88),
              child: CustomElevatedButton2(
                text: "CONNECTEZ VOUS",
                decoration: BoxDecoration(
                    border: Border.all(width: 2, color: Colors.black),
                    color: Colors.white
                ),
                buttonStyle: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.white),
                    textStyle: MaterialStateProperty.all(TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Color(0xffa6a7aa))),
                    elevation: MaterialStateProperty.all(0)
                ),
              ),
            ),
            SizedBox(height: 14,),
            Padding(
              padding: const EdgeInsets.only(left: 88,right: 88),
              child: CustomElevatedButton2(
                text: "INSCRIVEZ-VOUS",
                decoration: BoxDecoration(
                  border: Border.all(width: 2, color: Colors.black),
                  color: Colors.white
                ),
                buttonStyle: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.white),
                ),

              ),
            ),
          ],
        )
    );
  }

  Widget _buildPageHeader(BuildContext context) {
    return Column(children: [
      Container(
        height: 200.v,
        width: 200.h,
        child: Image.asset(ImageConstant.imgLogoBlack),
      )
    ]);
  }



}
