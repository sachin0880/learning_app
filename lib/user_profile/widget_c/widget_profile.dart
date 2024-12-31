
import 'package:flutter/material.dart';

import '../../utils/constants/global.dart';

class WidgetProfile extends StatefulWidget {
  final IconData icon;
  final String title;

  const WidgetProfile({super.key,
    required this.icon,
    required this.title});

  @override
  State<WidgetProfile> createState() => _WidgetProfileState();
}

class _WidgetProfileState extends State<WidgetProfile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 45,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(size.tradius_small),
          boxShadow: [
            BoxShadow(
                blurRadius: 1, color: Colors.grey.withOpacity(0.5),offset: Offset(0,3))
          ]),
      child: ListTile(
        // contentPadding: EdgeInsets.zero,
        leading: Icon(widget.icon),
        title: Text(widget.title),
        trailing: const Icon(
          Icons.navigate_next_rounded,
          size: 20,
        ),
      ),
    );
  }
}
