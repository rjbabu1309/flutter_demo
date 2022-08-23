import 'package:demo/util/colors.dart';
import 'package:demo/widgets/primary_text.dart';
import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: PrimaryText(
          txt: "Profile",
          fontWeight: FontWeight.w800,
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Container(
                        width: 100,
                        height: 100,
                        margin: EdgeInsets.only(right: 10),
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: AppColors.secTextColor, width: 3),
                            borderRadius: BorderRadius.circular(50)),
                        child: CircleAvatar(
                          backgroundImage: AssetImage('assets/images/logo.png'),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          PrimaryText(txt: "Nikku"),
                          PrimaryText(
                            txt: '+91 83182 49760',
                            size: 16,
                          ),
                          PrimaryText(
                            txt: 'Email not added',
                            size: 14,
                            color: Colors.red,
                          )
                        ],
                      ),
                    ],
                  ),
                  TextButton(
                    onPressed: null,
                    child: Row(
                      children: [
                        Icon(
                          Icons.edit_outlined,
                          color: AppColors.primaryColor,
                          size: 20,
                        ),
                        PrimaryText(
                          txt: "Edit",
                          color: AppColors.primaryColor,
                          size: 16,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
