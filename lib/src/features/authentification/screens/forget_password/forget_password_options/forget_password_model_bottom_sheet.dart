import 'package:flutter/material.dart';
import 'package:EnviroSafeIot/src/features/authentification/screens/forget_password/forget_password_mail/forget_password_mail.dart';
import 'package:EnviroSafeIot/src/features/authentification/screens/forget_password/forget_password_phone/forget_password_phone.dart';

import '../../../../../constants/sizes.dart';
import '../../../../../constants/text_strings.dart';
import '../../login_screen.dart';
import 'forget_password_btn_widget.dart';

class ForgetPasswordScreen {
  static Future<dynamic> buildShowModalBottomSheet(BuildContext context) {
    return showModalBottomSheet(
      context: context,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20.0)), // Coins arrondis
      ),
      backgroundColor: Colors.white,
      builder: (context) => Padding(
        padding: const EdgeInsets.all(tDefaultSize),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min, // Pour adapter la Bottom Sheet à son contenu
          children: [
            Center(
              child: Container(
                width: 50,
                height: 5,
                decoration: BoxDecoration(
                  color: Colors.grey.shade400,
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            const SizedBox(height: 15),

            // Titre amélioré
            Text(
              tForgetPasswordTitle,
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
            const SizedBox(height: 5),
            Text(
              tForgetPasswordSubTitle,
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                color: Colors.grey.shade600,
              ),
            ),

            const SizedBox(height: 25),

            // Option réinitialisation par Email 📧
            ForgetPasswordButtonWidget(
              onTap: () {
                Navigator.pop(context); // Ferme la modal
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ForgetPasswordMailScreen(),
                  ),
                );
              },
              btnIcon: Icons.email_outlined,
              iconColor: Colors.blueAccent, // Nouvelle couleur d'icône
              title: tEmail,
              subTitle: tResetViaEMail,
            ),

            const SizedBox(height: 15),

            // Option réinitialisation par Téléphone 📱
            ForgetPasswordButtonWidget(
              onTap: () {
                Navigator.pop(context); // Ferme la modal
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ForgetPasswordPhoneScreen(),
                  ),
                );
              },
              btnIcon: Icons.phone_android_rounded,
              iconColor: Colors.green, // Nouvelle couleur d'icône
              title: tPhone,
              subTitle: tResetViaPhone,
            ),

            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
