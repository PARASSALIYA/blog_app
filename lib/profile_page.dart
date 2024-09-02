import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            SizedBox(
              height: s.height * 0.08,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Icon(Icons.arrow_back_ios, size: 30),
                SizedBox(width: s.width * 0.25),
                const Text(
                  'Profile',
                  style: TextStyle(
                    fontSize: 30,
                    color: Color.fromARGB(255, 46, 75, 150),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: s.height * 0.06,
            ),
            Center(
              child: Container(
                height: s.height * 0.15,
                alignment: const Alignment(0.3, 0.9),
                decoration: BoxDecoration(
                  image: const DecorationImage(
                    image: NetworkImage(
                      "https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_960_720.png",
                    ),
                  ),
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Colors.black,
                    width: 2.0,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: s.height * 0.02,
            ),
            const Text(
              'Full Name',
              style: TextStyle(
                fontSize: 18,
                color: Color.fromARGB(255, 46, 75, 150),
                fontWeight: FontWeight.bold,
              ),
            ),
            const Text(
              'Username',
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey,
              ),
            ),
            SizedBox(
              height: s.height * 0.03,
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, 'profileeditpage');
              },
              child: Container(
                height: s.height * 0.05,
                width: s.width * 0.4,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 46, 75, 150),
                  borderRadius: BorderRadius.circular(
                    10,
                  ),
                ),
                child: const Center(
                  child: Text(
                    'Edit Profile',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: s.height * 0.03,
            ),
            const Divider(),
            ListTile(
              onTap: () {},
              title: const Text(
                'Settings',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
              leading: const Icon(Icons.settings_outlined),
              trailing: const Icon(
                Icons.arrow_forward_ios,
                size: 18,
                color: Colors.black,
              ),
            ),
            ListTile(
              onTap: () {},
              title: const Text(
                'My Orders',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
              leading: const Icon(Icons.local_mall_outlined),
              trailing: const Icon(
                Icons.arrow_forward_ios,
                size: 18,
                color: Colors.black,
              ),
            ),
            ListTile(
              onTap: () {},
              title: const Text(
                'Address',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
              leading: const Icon(Icons.location_on_outlined),
              trailing: const Icon(
                Icons.arrow_forward_ios,
                size: 18,
                color: Colors.black,
              ),
            ),
            ListTile(
              onTap: () {},
              title: const Text(
                'Change Password',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
              leading: const Icon(Icons.lock_outline_rounded),
              trailing: const Icon(
                Icons.arrow_forward_ios,
                size: 18,
                color: Colors.black,
              ),
            ),
            const Divider(),
            ListTile(
              onTap: () {},
              title: const Text(
                'Help & Support',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
              leading: const Icon(Icons.help_outline),
              trailing: const Icon(
                Icons.arrow_forward_ios,
                size: 18,
                color: Colors.black,
              ),
            ),
            ListTile(
              onTap: () {},
              title: const Text(
                'Logout',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
              leading: const Icon(Icons.logout),
              trailing: const Icon(
                Icons.arrow_forward_ios,
                size: 18,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
