import 'package:flutter/material.dart';
import '../../../../../constants/image_strings.dart';
import '../../../../../constants/sizes.dart';
import '../../../../../constants/text_strings.dart';

import '../../../form_header_widget.dart';

class ForgetPasswordPhoneScreen extends StatelessWidget {
  const ForgetPasswordPhoneScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          padding: const EdgeInsets.all(tDefaultSize),
          child: Column(
            children: const[
              SizedBox(height: tDefaultSize*4),
              FormHeaderWidget(
                image: tForgetPasswordImage,
                title: tForgetPassword,
                subTitle: tForgetPasswordSubTitle,
                crossAxisAlignment: CrossAxisAlignment.center,
                heightBetween: 30.0,
              ),
            ],
          ),
        )
    );
  }
}
