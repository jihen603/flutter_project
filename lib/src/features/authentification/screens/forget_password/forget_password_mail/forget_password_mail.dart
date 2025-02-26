import 'package:flutter/material.dart';
import 'package:untitled1/src/constants/image_strings.dart';
import 'package:untitled1/src/constants/sizes.dart';
import 'package:untitled1/src/constants/text_strings.dart';
import 'package:untitled1/src/features/authentification/form_header_widget.dart';

class ForgetPasswordMailScreen extends StatelessWidget {
  const ForgetPasswordMailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(tDefaultSize),
        child: Column(
          children: const [
            SizedBox(height: tDefaultSize * 4),
            FormHeaderWidget(
              image: tForgetPasswordImage,
              title: tForgetPassword,
              subTitle: tForgetPasswordSubTitle,
              crossAxisAlignment: CrossAxisAlignment.center,
              heightBetween: 30.0,
            ),
          ],
        ),
      ),
    );
  }
}

