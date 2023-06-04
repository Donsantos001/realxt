import 'package:flutter/material.dart';
import 'package:realestate/pages/auth/recovercode.dart';

class RecoverEmail extends StatefulWidget {
  const RecoverEmail({super.key});

  @override
  State<RecoverEmail> createState() => _RecoverEmailState();
}

class _RecoverEmailState extends State<RecoverEmail> {
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
                const Padding(
                  padding: EdgeInsets.only(bottom: 15),
                  child: Text(
                    "Type your registered email address and we will send you a link to reset your password",
                    textAlign: TextAlign.left,
                    style: TextStyle(fontSize: 15),
                  ),
                ),
                TextField(
                  decoration: InputDecoration(
                    labelText: "Email Address",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
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
                onPressed: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => RecoverCode())),
                child: const Text("Proceed"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
