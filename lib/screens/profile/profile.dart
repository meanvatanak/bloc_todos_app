import 'package:flutter/material.dart';

import '../../utilities/constants.dart';
import '../../widgets/logout_dialog.dart';
import '../../widgets/profile_list_tile.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Profile',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: primaryColor,
        leading: BackButton(
          color: Colors.white,
          onPressed: () {
            Navigator.pushNamed(context, '/main');
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              color: primaryColor,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 20),
                    Container(
                      width: 160,
                      height: 160,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: secondaryColor,
                          width: 5,
                        ),
                      ),
                      child: SizedBox(
                        height: 150,
                        width: 150,
                        child: CircleAvatar(
                          radius: 30.0,
                          backgroundImage: NetworkImage(
                            '$baseUrl/img/user/MeanVatanak1653532618.jpg',
                          ),
                          backgroundColor: Colors.transparent,
                        ),
                      ),
                    ),
                    SizedBox(height: 30),
                    Text(
                      'Mean Vatanak',
                      style: TextStyle(
                        fontSize: 22,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'mvatanak36@gmail.com',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      '010300667',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Phnom Penh',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 18.0),
              child: Text('Account Setting'),
            ),
            SizedBox(height: 20),
            ListTile(
              onTap: () {
                Navigator.pushReplacementNamed(context, '/edit-profile');
              },
              leading: CircleAvatar(
                child: Icon(Icons.person),
              ),
              title: Text('Edit Profile'),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
            SettingListTile(title: "Language", myIcon: Icons.language),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 18.0),
              child: Text('Support'),
            ),
            SizedBox(height: 20),
            ListTile(
              onTap: () {
                Navigator.pushNamed(context, '/support-developer');
              },
              leading: CircleAvatar(
                child: Icon(Icons.support_rounded),
              ),
              title: Text('Support Developer'),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
            SettingListTile(title: "Give Us Feedback", myIcon: Icons.feedback),
            ListTile(
              onTap: () {
                Navigator.pushNamed(context, '/about-us');
              },
              leading: CircleAvatar(
                child: Icon(Icons.info),
              ),
              title: Text('About Us'),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
            InkWell(
              onTap: () {
                showConfirmLogoutDialog(context);
              },
              child: SettingListTile(title: "Log Out", myIcon: Icons.logout),
            ),
          ],
        ),
      ),
    );
  }
}
