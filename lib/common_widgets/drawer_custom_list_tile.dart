import 'package:flutter/material.dart';

Widget DrawerCustomListTile(Color bgColor, Color itemColor, String title,
    String subTitle, IconData leadingIcon, IconData trailingIcon) {
  return Container(
    color: bgColor,
    child: ListTile(
      leading: CircleAvatar(
        backgroundColor: bgColor,
        child: Icon(
          leadingIcon,
          color: itemColor,
        ),
      ),
      title: Text(
        title,
        style: TextStyle(
          color: itemColor,
        ),
      ),
      subtitle: subTitle != "" ? Text(subTitle) : null,
      trailing: Icon(
        Icons.arrow_right_rounded,
        color: itemColor,
        size: 34,
      ),
      onTap: () {},
    ),
  );
}
