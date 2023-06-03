import 'package:flutter/material.dart';

Widget MenuCustomListItem(Color bgColor, IconData leadingIcon, String title,
    String subTitle, IconData trailingIcon) {
  return Container(
    decoration: BoxDecoration(
      border: Border(
        bottom: BorderSide(
          color: Colors.grey.shade200,
        ),
      ),
    ),
    child: ListTile(
      leading: CircleAvatar(
        backgroundColor: bgColor,
        child: Icon(
          leadingIcon,
          color: Colors.white,
        ),
      ),
      title: Text(title),
      subtitle: Text(subTitle),
      trailing: Icon(
        trailingIcon,
      ),
    ),
  );
}
