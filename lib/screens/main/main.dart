import 'package:bloc_todos_app/screens/tasks/my_tasks/my_tasks.dart';
import 'package:flutter/material.dart';

import '../../utilities/constants.dart';
import '../../widgets/logout_dialog.dart';
import '../../widgets/profile_list_tile.dart';

class MainScreen extends StatefulWidget {
  MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'My Tasks',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: primaryColor,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).pushNamed(
                '/tasks-completed',
                arguments: {
                  'title': 'Completed Tasks',
                  'description': 'This is the completed tasks page',
                },
              );
            },
            icon: const Icon(Icons.check_circle_outline, color: Colors.white),
            splashRadius: 24,
          ),
        ],
        leading: IconButton(
          onPressed: () {
            _scaffoldKey.currentState!.openDrawer();
          },
          icon: Icon(
            Icons.menu,
            color: Colors.white,
          ),
          splashRadius: 24,
        ),
      ),
      key: _scaffoldKey,
      drawer: Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              margin: EdgeInsets.zero,
              accountName: Text('Mean Vatanak'),
              accountEmail: Text('mvatanak36@gmail.com'),
              decoration: BoxDecoration(
                color: primaryColor,
              ),
              currentAccountPicture: Container(
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
                    // backgroundImage: NetworkImage(
                    //   '$baseUrl/img/user/MeanVatanak1653532618.jpg',
                    // ),
                    backgroundImage: AssetImage(
                      'assets/img/MeanVatanak.jpeg',
                    ),
                    backgroundColor: Colors.transparent,
                  ),
                ),
              ),
              onDetailsPressed: () {
                // _scaffoldKey.currentState?.closeDrawer();
                Navigator.of(context).pushNamedAndRemoveUntil(
                  '/profile',
                  (route) => false,
                );
              },
            ),
            ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.home),
              ),
              trailing: Icon(Icons.arrow_forward_ios),
              title: Text('My Tasks'),
              onTap: () {
                Navigator.of(context).pushNamedAndRemoveUntil(
                  '/main',
                  (route) => false,
                );
              },
              // dense: true,
            ),
            ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.category),
              ),
              trailing: Icon(Icons.arrow_forward_ios),
              title: Text('Tasks Category'),
              onTap: () {
                Navigator.of(context).pushNamed(
                  '/tasks-category',
                );
              },
              // dense: true,
            ),
            ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.delete),
              ),
              trailing: Icon(Icons.arrow_forward_ios),
              title: Text('Recycle Bin'),
              onTap: () {
                Navigator.of(context).pushNamed(
                  '/category',
                );
              },
              // dense: true,
            ),
            Spacer(),
            InkWell(
              onTap: () {
                showConfirmLogoutDialog(context);
              },
              child: SettingListTile(title: "Log Out", myIcon: Icons.logout),
            ),
            Padding(
              // padding: const EdgeInsets.symmetric(horizontal: 16.0),
              padding: const EdgeInsets.all(25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text('Version:'),
                  Text('1.0.0'),
                ],
              ),
            ),
          ],
        ),
      ),
      body: MyTasks(),
    );
  }
}
