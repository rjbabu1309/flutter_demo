import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class FlatCard extends StatefulWidget {
  final Widget child;
  const FlatCard({Key? key, required this.child}) : super(key: key);

  @override
  State<FlatCard> createState() => _FlatCardState();
}

class _FlatCardState extends State<FlatCard> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Card(
          elevation: 0,
          margin: EdgeInsets.all(30),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          color: Colors.white,
          child: Container(
            padding: EdgeInsets.all(20),
            child: widget.child,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
          ),
        )
      ],
    );
  }
}
