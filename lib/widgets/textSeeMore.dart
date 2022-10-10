
import 'package:flutter/material.dart';

class textSeeMore extends StatelessWidget {
  const textSeeMore({
    Key? key, required this.text,
  }) : super(key: key);

  final String text;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          text,
          style:
              Theme.of(context).textTheme.titleMedium?.copyWith(
                    color: Colors.white,
                  ),
        ),
        Expanded(child: Container()),
        Text(
          'see more',
          style:
              Theme.of(context).textTheme.titleSmall?.copyWith(
                    color: Colors.orange,
                  ),
        ),
      ],
    );
  }
}