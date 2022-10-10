import 'package:flutter/material.dart';

class PlayPage extends StatelessWidget {
  const PlayPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text('Play Page',style: Theme.of(context).textTheme.headline3?.copyWith(color: Colors.white)),
      ),
    );
  }
}
