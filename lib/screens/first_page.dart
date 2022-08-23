import 'package:demo/screens/login_signup.dart';
import 'package:demo/util/colors.dart';
import 'package:demo/widgets/primary_text.dart';
import 'package:flutter/material.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              'assets/images/logo.png',
              width: 90,
            ),
            Stack(
              children: [
                Container(
                  alignment: Alignment.center,
                  width: double.infinity,
                  height: 410,
                  decoration: BoxDecoration(
                    color: Colors.redAccent[100],
                    borderRadius: BorderRadius.circular(
                      (300),
                    ),
                  ),
                  child: Container(
                    alignment: Alignment.center,
                    width: 410 - 70,
                    height: 340,
                    decoration: BoxDecoration(
                      color: Colors.yellow,
                      borderRadius: BorderRadius.circular(400),
                    ),
                    child: Container(
                      alignment: Alignment.center,
                      width: 410 - 140,
                      height: 270,
                      decoration: BoxDecoration(
                        color: Colors.blueAccent,
                        borderRadius: BorderRadius.circular(400),
                      ),
                    ),
                  ),
                )
              ],
            ),
            Container(
              margin: EdgeInsets.all(30),
              child: Column(
                children: [
                  PrimaryText(
                    txt: "Analyze Evvents, Share ",
                    overflow: TextOverflow.visible,
                    size: 22,
                    fontWeight: FontWeight.w800,
                  ),
                  PrimaryText(
                    txt: "Options and Earn",
                    overflow: TextOverflow.visible,
                    size: 22,
                    fontWeight: FontWeight.w800,
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
                    onPressed: () => {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const LoginSignup()))
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 4),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          PrimaryText(
                            txt: "LOGIN / SIGNUP",
                            size: 16,
                            fontWeight: FontWeight.w800,
                            color: Colors.white,
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
