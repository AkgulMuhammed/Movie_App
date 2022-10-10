import 'package:flutter/material.dart';

class BookmarkPage extends StatelessWidget {
  const BookmarkPage({super.key});

  @override
  Widget build(BuildContext context) {
     return Container(
      child: Center(
        child: Text('Bookmark Page',style: Theme.of(context).textTheme.headline3?.copyWith(color: Colors.white)),
      ),
    );
  }
}