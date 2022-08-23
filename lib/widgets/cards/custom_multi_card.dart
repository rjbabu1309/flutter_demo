import 'package:flutter/material.dart';

class CustomMultiCard extends StatefulWidget {
  final Widget child;
  double? elevation;
  CustomMultiCard({Key? key, required this.child, this.elevation})
      : super(key: key);

  @override
  State<CustomMultiCard> createState() => _CustomMultiCardState();
}

class _CustomMultiCardState extends State<CustomMultiCard> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Card(
          elevation: widget.elevation,
          margin: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(14.0),
          ),
          color: Colors.white,
          child: Container(
            padding: EdgeInsets.all(14),
            child: widget.child,
          ),
        )
      ],
    );
  }
}
