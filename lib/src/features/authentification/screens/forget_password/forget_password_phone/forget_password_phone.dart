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

            // Icône Téléphone
            const Icon(Icons.phone, size: 60, color: Colors.blue),

            const SizedBox(height: 20),

            // Champ de saisie Numéro de téléphone
            TextField(
              decoration: InputDecoration(
                labelText: "Enter your phone number",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                prefixIcon: const Icon(Icons.phone_outlined),
              ),
              keyboardType: TextInputType.phone,
            ),

            const SizedBox(height: 30),

            // Bouton Next
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  // Ajouter la logique ici
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

