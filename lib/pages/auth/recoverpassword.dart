import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class RecoverPassword extends StatefulWidget {
  const RecoverPassword({super.key});

  @override
  State<RecoverPassword> createState() => _RecoverPasswordState();
}

class _RecoverPasswordState extends State<RecoverPassword> {
  bool _isObscure1 = false;
  bool _isObscure2 = false;

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
              height: 35,
            ),
            SizedBox(
              height: 50,
              width: double.infinity,
              child: TextField(
                obscureText: _isObscure1,
                enableSuggestions: false,
                autocorrect: false,
                decoration: InputDecoration(
                  labelText: "New Password",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  suffix: IconButton(
                    onPressed: () {
                      setState(() => _isObscure1 = !_isObscure1);
                    },
                    icon: Icon(
                        _isObscure1 ? Icons.visibility : Icons.visibility_off),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 35,
            ),
            SizedBox(
              height: 50,
              width: double.infinity,
              child: TextField(
                obscureText: _isObscure2,
                enableSuggestions: false,
                autocorrect: false,
                decoration: InputDecoration(
                  labelText: "Confirm Password",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  suffix: IconButton(
                    onPressed: () {
                      setState(() => _isObscure2 = !_isObscure2);
                    },
                    icon: Icon(
                        _isObscure2 ? Icons.visibility : Icons.visibility_off),
                  ),
                ),
              ),
            ),
            const Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(top: 5),
                child: Text("Must be at least 8 characters"),
              ),
            ),
            const SizedBox(
              height: 35,
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
                onPressed: () {},
                child: const Text("Proceed"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
