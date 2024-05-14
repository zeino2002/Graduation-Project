import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:khedma_tech/core/constent.dart';
import 'package:khedma_tech/views/widget/customTxtFild.dart';
import 'package:khedma_tech/views/logins/work.dart';
import '../../core/assets.dart';
import 'widget/custom_btn_log.dart';

class IdNum extends StatelessWidget {
  IdNum({super.key});
  final TextEditingController _nationalIdController = TextEditingController();

  Future<void> _signIn(BuildContext context) async {
    try {
      final String nationalId = _nationalIdController.text.trim();

      // Perform sign-in with national ID
      UserCredential userCredential =
          await FirebaseAuth.instance.signInWithCustomToken(
        _generateCustomToken(nationalId),
      );

      // User successfully signed in
      // You can navigate to the next screen or perform any other actions
      print('User signed in: ${userCredential.user!.uid}');
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        print('No user found for that national ID.');
      } else {
        print('Error signing in: ${e.message}');
      }
    }
  }

  String _generateCustomToken(String nationalId) {
    // Implement your custom token generation logic here
    // You can use a server-side function or an external service to generate the token
    // The custom token should be generated securely and unique for each user

    // Example: Concatenate national ID with a unique identifier
    String tokenData = '$nationalId${DateTime.now().millisecondsSinceEpoch}';

    // Generate a secure hash of the token data (e.g., using SHA-256)
    String hashedToken = generateSecureHash(tokenData);

    // Return the hashed token as the custom token
    return hashedToken;
  }

  String generateSecureHash(String data) {
    // Implement your secure hash generation logic here
    // This should be a secure hashing algorithm like SHA-256 or bcrypt

    // Example: Generate a simple hash by reversing the input string
    return data.split('').reversed.join();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Align(
                  alignment: Alignment.topRight,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Image(
                      image: AssetImage(AssetsData.icon),
                      height: 60,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                const Text(
                  'من فضلك ادخل رقمك القومي',
                  style: txtstyle2,
                ),
                const SizedBox(
                  height: 60,
                ),
                CustomTxtFild(
                  controller: _nationalIdController,
                  keyboardType: TextInputType.number,
                  txt: ' الرقم القومي',
                ),
                const SizedBox(
                  height: 350,
                ),
                CustomBtnLog(
                  title: 'التالى',
                  backgroundColor: kcolor1,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Works(),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
