import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:EnviroSafeIot/src/constants/sizes.dart';
import 'package:EnviroSafeIot/src/constants/text_strings.dart';

class OTPScreen extends StatelessWidget {
  const OTPScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(tDefaultSize),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              tOtpTitle,
              style: GoogleFonts.montserrat(
                fontWeight: FontWeight.bold,
                fontSize: 28.0, // Réduit la taille du texte pour éviter un dépassement
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 10.0), // Ajout d'un espace entre les textes
            Text(
              tOtpSubTitle.toUpperCase(),
              style: Theme.of(context).textTheme.bodyMedium,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 40.0),
            Text(
              "$tOtpMessage support@codingwitht.com",
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20.0),

            // Champ OTP
            OtpTextField(
              numberOfFields: 6,
              fillColor: Colors.black.withOpacity(0.1),
              filled: true,
              onSubmit: (code) {
                print("OTP is => $code");
              },
            ),

            const SizedBox(height: 20.0),

            // Bouton "Next"
            SizedBox(
              width: double.infinity, // Correction ici
              child: ElevatedButton(
                onPressed: () {},
                child: const Text(tNext),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
