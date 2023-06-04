import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  Profile({super.key});

  final _options = [
    ProfileOption(title: "Activities", icon: Icons.access_time, action: () {}),
    ProfileOption(title: "Saved", icon: Icons.check, action: () {}),
    ProfileOption(title: "Rate", icon: Icons.star, action: () {}),
    ProfileOption(title: "Share", icon: Icons.share, action: () {}),
    ProfileOption(
        title: "Logout", icon: Icons.exit_to_app_rounded, action: () {}),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: const EdgeInsets.only(top: 20),
        child: Column(children: [
          const Text(
            "Profile",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(
              vertical: 20,
            ),
            decoration: const BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: Colors.grey,
                ),
              ),
            ),
            child: Column(
              children: [
                SizedBox(
                  height: 140,
                  width: 140,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: Image.asset(
                      "assets/images/avatar.png",
                      cacheHeight: 140,
                      cacheWidth: 140,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                const Text(
                  "Santos Theboss",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                const Text(
                  "tsgajhasnasuasja@gmails.com",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30, vertical: 10),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  onPressed: () {},
                  child: const Text(
                    "Edit Profile",
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(30),
            child: Column(
              children: List.generate(
                _options.length,
                (index) => Padding(
                  padding: const EdgeInsets.only(
                    bottom: 15,
                  ),
                  child: Container(
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 1,
                        )
                      ],
                    ),
                    child: ElevatedButton(
                      onPressed: _options[index].action,
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        padding: const EdgeInsets.all(15),
                        backgroundColor: Colors.white,
                      ),
                      child: Row(
                        children: [
                          Icon(
                            _options[index].icon,
                            color: Colors.green,
                            size: 30,
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          Text(
                            _options[index].title,
                            style: const TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          )
        ]),
      ),
    );
  }
}

class ProfileOption {
  String title;
  IconData icon;
  Function() action;

  ProfileOption({
    required this.title,
    required this.icon,
    required this.action,
  });
}
