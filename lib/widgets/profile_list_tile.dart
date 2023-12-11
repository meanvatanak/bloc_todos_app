import 'package:flutter/material.dart';

class SettingListTile extends StatelessWidget {
  const SettingListTile({
    super.key,
    required this.title,
    required this.myIcon,
    this.path,
  });

  final title;
  final IconData myIcon;
  final String? path;

  @override
  Widget build(BuildContext context) {
    if (path == null) {
      return ListTile(
        leading: CircleAvatar(
          child: Icon(myIcon),
        ),
        title: Text(title),
        // trailing: Icon(Icons.arrow_forward_ios),
      );
    } else {
      return ListTile(
        onTap: () {
          Navigator.pushNamed(context, path!);
        },
        leading: CircleAvatar(
          child: Icon(myIcon),
        ),
        title: Text(title),
        trailing: Icon(Icons.arrow_forward_ios),
      );
    }
  }
}
