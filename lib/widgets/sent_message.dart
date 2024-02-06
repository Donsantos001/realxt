import 'package:flutter/material.dart';

class SentMessage extends StatelessWidget {
  final String message;
  final String time;
  final bool sent;
  final bool middle;

  SentMessage(
      {required this.message,
      required this.time,
      this.sent = true,
      this.middle = true});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: sent ? Alignment.centerRight : Alignment.centerLeft,
      child: Padding(
        padding: EdgeInsets.only(
          left: !middle
              ? 0
              : sent
                  ? 0
                  : 20,
          right: !middle
              ? 0
              : sent
                  ? 20
                  : 0,
        ),
        child: ClipPath(
          clipper: middle
              ? null
              : sent
                  ? MessageClipper()
                  : ReplyClipper(),
          child: Container(
            padding: EdgeInsets.only(
              left: middle
                  ? 10
                  : sent
                      ? 14
                      : 28,
              top: 8,
              right: middle
                  ? 10
                  : sent
                      ? 26
                      : 12,
              bottom: middle ? 6 : 18,
            ),
            decoration: BoxDecoration(
              color: sent
                  ? Theme.of(context).colorScheme.primary
                  : Color.fromARGB(255, 41, 40, 40),
              borderRadius: middle ? BorderRadius.circular(14) : null,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  message,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  time,
                  style: const TextStyle(
                    color: Colors.white70,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class MessageClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.moveTo(0, 20);
    path.lineTo(0, size.height - 30);
    path.quadraticBezierTo(0, size.height - 10, 20, size.height - 10);
    path.lineTo(size.width - 40, size.height - 10);
    path.quadraticBezierTo(
        size.width - 30, size.height - 5, size.width, size.height);
    path.quadraticBezierTo(
        size.width - 20, size.height - 10, size.width - 20, size.height - 30);
    path.lineTo(size.width - 20, 20);
    path.quadraticBezierTo(size.width - 20, 0, size.width - 40, 0);
    path.lineTo(20, 0);
    path.quadraticBezierTo(0, 0, 0, 20);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}

class ReplyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.moveTo(20, 20);
    path.lineTo(20, size.height - 40);
    path.quadraticBezierTo(20, size.height - 10, 0, size.height);
    path.quadraticBezierTo(30, size.height - 5, 40, size.height - 10);
    path.lineTo(size.width - 20, size.height - 10);
    path.quadraticBezierTo(
        size.width, size.height - 10, size.width, size.height - 30);
    path.lineTo(size.width, 20);
    path.quadraticBezierTo(size.width, 0, size.width - 20, 0);
    path.lineTo(40, 0);
    path.quadraticBezierTo(20, 0, 20, 20);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
