import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
     return Center(
       child: Container(
        child: Center(
          child: Text('Setting Page',style: Theme.of(context).textTheme.headline3?.copyWith(color: Colors.white)),
        ),
    ),
     );
  }
}