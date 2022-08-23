import 'package:demo/util/colors.dart';
import 'package:demo/widgets/primary_text.dart';
import 'package:flutter/material.dart';

class Otp extends StatelessWidget {
  const Otp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.bgColor,
          elevation: 0,
        ),
        body: Container(
          margin: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            children: [
              PrimaryText(
                txt: "Enter OTP sent on +918318249760",
                size: 28,
                overflow: TextOverflow.visible,
                fontWeight: FontWeight.w900,
              ),
              Row(
                children: const [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(hintText: "Enter OTP"),
                    ),
                  ),
                ],
              ),
              TextButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                    AppColors.primaryColor,
                  ),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                  ),
                ),
                onPressed: () => {},
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      PrimaryText(
                        txt: "veryfy".toUpperCase(),
                        size: 16,
                        fontWeight: FontWeight.w800,
                        color: Colors.white,
                      )
                    ],
                  ),
                ),
              ),
              Row(
                children: [
                  PrimaryText(
                    txt: "Don't received OTP? ",
                    size: 14,
                  ),
                  GestureDetector(
                    child: PrimaryText(
                      txt: "Resend OTP",
                      color: AppColors.primaryColor,
                      size: 14,
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
