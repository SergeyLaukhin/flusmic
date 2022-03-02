import 'package:flutter/material.dart';

class DotContainer extends StatelessWidget {
  const DotContainer({
    Key? key,
    required this.child,
  }) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text("• "),
        Expanded(
          child: child,
        ),
      ],
    );
  }
}
