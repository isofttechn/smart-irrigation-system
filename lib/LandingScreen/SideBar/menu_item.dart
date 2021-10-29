import 'package:flutter/material.dart';

class MenuItem extends StatelessWidget {
  const MenuItem(
      {Key key, this.icon, this.title, this.onTap, List<Object> children})
      : super(key: key);
  final IconData icon;
  final String title;
  final Function onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          children: [
            Icon(
              icon,
              color: Colors.white,
              size: 20,
            ),
            SizedBox(
              width: 20,
            ),
            Text(
              title,
              style: TextStyle(
                fontWeight: FontWeight.w300,
                fontSize: 15,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
