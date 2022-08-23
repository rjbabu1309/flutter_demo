import 'package:demo/util/colors.dart';
import 'package:demo/widgets/primary_text.dart';
import 'package:flutter/material.dart';

class exampleCardItem extends StatelessWidget {
  final String title;
  int? index;
  final String descrioption;
  TextOverflow overflow = TextOverflow.ellipsis;
  exampleCardItem({
    Key? key,
    this.index,
    required this.title,
    required this.descrioption,
    this.overflow = TextOverflow.ellipsis,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: 320,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
      ),
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 18),
            width: 35,
            height: 35,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: AppColors.bgColor,
              borderRadius: BorderRadius.circular(17.5),
            ),
            child: Text(index.toString()),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              PrimaryText(txt: title),
              Text(
                descrioption,
                style: TextStyle(
                  overflow: overflow,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
