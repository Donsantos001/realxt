import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/otp_field_style.dart';
import 'package:otp_text_field/style.dart';
import 'package:realestate/pages/auth/recoverpassword.dart';

class RecoverCode extends StatefulWidget {
  const RecoverCode({super.key});

  @override
  State<RecoverCode> createState() => _RecoverCodeState();
}

class _RecoverCodeState extends State<RecoverCode> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Recover Password",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: RichText(
                    text: const TextSpan(
                      style: TextStyle(
                        fontSize: 14.0,
                        color: Colors.black,
                      ),
                      children: [
                        TextSpan(
                            text: "Enter the OTP we have sent to your email "),
                        TextSpan(
                          text: "sasjkasajsjasjka@gmail.com",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
                Center(
                  child: OTPTextField(
                    length: 5,
                    width: 300,
                    fieldWidth: 50,
                    style: const TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                    otpFieldStyle: OtpFieldStyle(
                      focusBorderColor: Theme.of(context).colorScheme.primary,
                    ),
                    textFieldAlignment: MainAxisAlignment.spaceBetween,
                    fieldStyle: FieldStyle.box,
                    onChanged: (pin) {},
                    onCompleted: (pin) {},
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              children: [
                const Text("Didn't get the code?"),
                TextButton(
                  onPressed: () {},
                  child: const Text("Resend code"),
                ),
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.all(20),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const RecoverPassword())),
                child: const Text("Proceed"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
