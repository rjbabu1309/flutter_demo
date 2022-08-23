import 'package:demo/util/colors.dart';
import 'package:demo/widgets/primary_text.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Page5 extends StatelessWidget {
  const Page5({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String referralCode = "0ZR1E7";
    String referralLink = "https://www.winzzo/user/ref=0ZR1E7";
    return SafeArea(
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.only(left: 30, right: 30, top: 20),
            width: double.infinity,
            child: PrimaryText(
              txt: "Refer and Earn",
              fontWeight: FontWeight.w900,
              size: 22,
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height - 170,
            width: double.infinity,
            child: Center(
              child: Container(
                width: MediaQuery.of(context).size.width - 60,
                height: MediaQuery.of(context).size.height - 210,
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromARGB(255, 215, 212, 212),
                        blurRadius: 2.0,
                        spreadRadius: 1, //New
                      )
                    ]),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset(
                      'assets/images/logo.png',
                      width: 170,
                      height: 170,
                    ),
                    PrimaryText(
                      txt:
                          "Earn 5 trades of commission FREE trades every time you refer",
                      overflow: TextOverflow.visible,
                      color: Color(0xFF791AC2),
                      fontWeight: FontWeight.w600,
                      size: 18,
                    ),
                    DottedBorder(
                      borderType: BorderType.RRect,
                      color: AppColors.primaryColor,
                      strokeWidth: 1.5,
                      radius: Radius.circular(12),
                      padding: EdgeInsets.all(0),
                      dashPattern: [
                        4,
                        3,
                      ],
                      child: ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                        child: Container(
                          color: Colors.green[100],
                          padding: const EdgeInsets.symmetric(
                              horizontal: 16, vertical: 8),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              PrimaryText(
                                txt: referralCode,
                                color: AppColors.primaryColor,
                                fontWeight: FontWeight.w700,
                                size: 22,
                              ),
                              Row(
                                children: [
                                  GestureDetector(
                                    onTap: () => {
                                      Clipboard.setData(
                                          ClipboardData(text: referralLink)),
                                      showModalBottomSheet<void>(
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(40.0),
                                        ),
                                        context: context,
                                        builder: (BuildContext context) {
                                          return Container(
                                            // margin: EdgeInsets.all(30),
                                            height: 200,
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius: BorderRadius.only(
                                                  topLeft: Radius.circular(40),
                                                  topRight:
                                                      Radius.circular(40)),
                                            ),
                                            child: Container(
                                              margin: EdgeInsets.all(30),
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: <Widget>[
                                                  Container(
                                                    width: double.infinity,
                                                    child: PrimaryText(
                                                      txt:
                                                          "Referral link copied",
                                                    ),
                                                    decoration: BoxDecoration(
                                                      border: Border(
                                                        bottom: BorderSide(
                                                            width: 1.0,
                                                            color:
                                                                Colors.black),
                                                      ),
                                                    ),
                                                  ),
                                                  Text(
                                                    "Copied referral link to the clipboard. Share it with your friends on the apps you love.",
                                                  ),
                                                  FlatButton(
                                                      color: AppColors
                                                          .primaryColor,
                                                      onPressed: () =>
                                                          Navigator.pop(
                                                              context),
                                                      child: Text(
                                                        "OKAY",
                                                        style: TextStyle(
                                                            color:
                                                                Colors.white),
                                                      ))
                                                ],
                                              ),
                                            ),
                                          );
                                        },
                                      )
                                    },
                                    child: Icon(
                                      Icons.link,
                                      color: AppColors.primaryColor,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 30,
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      Clipboard.setData(
                                          ClipboardData(text: referralCode));
                                      showModalBottomSheet<void>(
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(40.0),
                                        ),
                                        context: context,
                                        builder: (BuildContext context) {
                                          return Container(
                                            // margin: EdgeInsets.all(30),
                                            height: 200,
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius: BorderRadius.only(
                                                  topLeft: Radius.circular(40),
                                                  topRight:
                                                      Radius.circular(40)),
                                            ),
                                            child: Container(
                                              margin: EdgeInsets.all(30),
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: <Widget>[
                                                  Container(
                                                    width: double.infinity,
                                                    child: PrimaryText(
                                                      txt:
                                                          "Referral code copied",
                                                    ),
                                                    decoration: BoxDecoration(
                                                      border: Border(
                                                        bottom: BorderSide(
                                                            width: 1.0,
                                                            color:
                                                                Colors.black),
                                                      ),
                                                    ),
                                                  ),
                                                  Text(
                                                    "Copied referral code to the clipboard. Share it with your friends on the apps you love.",
                                                  ),
                                                  FlatButton(
                                                      color: AppColors
                                                          .primaryColor,
                                                      onPressed: () =>
                                                          Navigator.pop(
                                                              context),
                                                      child: Text(
                                                        "OKAY",
                                                        style: TextStyle(
                                                            color:
                                                                Colors.white),
                                                      ))
                                                ],
                                              ),
                                            ),
                                          );
                                        },
                                      );
                                    },
                                    child: Icon(
                                      Icons.copy,
                                      color: AppColors.primaryColor,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    PrimaryText(
                      txt: "Or Invite via",
                      color: Color(0xFF791AC2),
                      fontWeight: FontWeight.w600,
                      size: 18,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        InkWell(
                          child: Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.grey,
                              ),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Icon(
                              Icons.telegram,
                              size: 30,
                              color: Colors.blue[600],
                            ),
                          ),
                        ),
                        InkWell(
                          child: Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.grey,
                              ),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Icon(
                              Icons.whatsapp_outlined,
                              color: AppColors.primaryColor,
                              size: 30,
                            ),
                          ),
                        ),
                        InkWell(
                          child: Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.grey,
                              ),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Icon(
                              Icons.share_outlined,
                              color: Colors.amber,
                              size: 30,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: PrimaryText(
                        txt: 'How Referal works',
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    PrimaryText(
                      txt: "• Friend Signup on Winzzo with the referral code.",
                      overflow: TextOverflow.visible,
                      size: 16,
                      color: Colors.grey[700],
                    ),
                    PrimaryText(
                      txt:
                          "• You and your friend both will earn 3 days of commission FREE treds",
                      overflow: TextOverflow.visible,
                      size: 16,
                      color: Colors.grey[700],
                    ),
                    PrimaryText(
                      txt:
                          "• Maximum of 30 days commission FREE trading is available for the referal program.",
                      overflow: TextOverflow.visible,
                      size: 16,
                      color: Colors.grey[700],
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
