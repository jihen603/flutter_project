import 'package:flutter/material.dart';
import 'package:EnviroSafeIot/src/constants/image_strings.dart';
import 'package:EnviroSafeIot/src/constants/sizes.dart';
import 'package:EnviroSafeIot/src/constants/text_strings.dart';
import 'package:EnviroSafeIot/src/features/authentification/form_header_widget.dart';

import '../forget_password_otp/otp_screen.dart';

class ForgetPasswordMailScreen extends StatelessWidget {
  const ForgetPasswordMailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(tDefaultSize),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: tDefaultSize * 4),
            const FormHeaderWidget(
              image: tForgetPasswordImage,
              title: tForgetPassword,
              subTitle: tForgetPasswordSubTitle,
              crossAxisAlignment: CrossAxisAlignment.center,
              heightBetween: 30.0,
            ),
            const SizedBox(height: 30),

            // Icône Email
            const Icon(Icons.email, size: 60, color: Colors.blue),

            const SizedBox(height: 20),

            // Champ de saisie Email
            TextField(
              decoration: InputDecoration(
                labelText: "Enter your email",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                prefixIcon: const Icon(Icons.email_outlined),
              ),
              keyboardType: TextInputType.emailAddress,
            ),

            const SizedBox(height: 30),

            // Bouton Next
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const OTPScreen(), // Navigue vers OTPScreen
                    ),
                  );

                },
                child: const Text("Next"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


