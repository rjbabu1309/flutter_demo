import 'package:demo/util/colors.dart';
import 'package:demo/widgets/cards/custom_multi_card.dart';
import 'package:demo/widgets/primary_text.dart';
import 'package:flutter/material.dart';

class Page4 extends StatelessWidget {
  const Page4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Container(
          color: AppColors.bgColor,
          child: Container(
            width: double.maxFinite,
            margin: const EdgeInsets.symmetric(vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: PrimaryText(
                    txt: "Wallet",
                    fontWeight: FontWeight.w900,
                    size: 22,
                  ),
                ),
                // Container(
                //   // width: MediaQuery.of(context).size.width - 60,
                //   height: 160,
                //   padding: EdgeInsets.all(18),
                //   decoration: BoxDecoration(
                //     color: Colors.white,
                //     borderRadius: BorderRadius.circular(14),
                //   ),
                //   child: Row(
                //     children: [
                //       Column(
                //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //         crossAxisAlignment: CrossAxisAlignment.start,
                //         children: [
                //           Container(
                //             child: Column(
                //               crossAxisAlignment: CrossAxisAlignment.start,
                //               children: [
                //                 PrimaryText(
                //                   txt: "Wallet Balance",
                //                   size: 18,
                //                   fontWeight: FontWeight.w600,
                //                   color: Colors.grey[600],
                //                 ),
                //                 PrimaryText(
                //                   txt: "\$ 401.45",
                //                   fontWeight: FontWeight.w800,
                //                 )
                //               ],
                //             ),
                //           ),
                //           Container(
                //             child: Column(
                //               crossAxisAlignment: CrossAxisAlignment.start,
                //               children: [
                //                 PrimaryText(
                //                   txt: "Withdrawable Balance",
                //                   size: 18,
                //                   fontWeight: FontWeight.w600,
                //                   color: Colors.grey[600],
                //                 ),
                //                 PrimaryText(
                //                   txt: "\$ 401.45",
                //                   fontWeight: FontWeight.w800,
                //                 )
                //               ],
                //             ),
                //           ),
                //         ],
                //       ),
                //       Image.asset(
                //         'assets/images/logo.png',
                //         width: 120,
                //         height: 120,
                //       ),
                //     ],
                //   ),
                // ),
                CustomMultiCard(
                  elevation: 0,
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      // borderRadius: BorderRadius.circular(14),
                    ),
                    child: Row(
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                PrimaryText(
                                  txt: "Wallet Balance",
                                  size: 16,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.grey[600],
                                ),
                                PrimaryText(
                                  txt: "\$ 401.45",
                                  size: 18,
                                  fontWeight: FontWeight.w800,
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 18,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                PrimaryText(
                                  txt: "Withdrawable Balance",
                                  size: 16,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.grey[600],
                                ),
                                PrimaryText(
                                  txt: "\$ 401.45",
                                  size: 18,
                                  fontWeight: FontWeight.w800,
                                )
                              ],
                            ),
                          ],
                        ),
                        Image.asset(
                          'assets/images/logo.png',
                          width: 120,
                          height: 120,
                        ),
                      ],
                    ),
                  ),
                ),
                // FlatCard(child: Text("raja")),
                CustomMultiCard(
                  elevation: 0,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.arrow_forward_ios,
                            size: 18,
                          ),
                          PrimaryText(
                            txt: "Add Money",
                            size: 18,
                          )
                        ],
                      ),
                      Container(
                        width: double.maxFinite,
                        height: 44,
                        decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.grey,
                            ),
                            borderRadius: BorderRadius.circular(12)),
                        child: Row(
                          children: [
                            Container(
                              width: 28,
                              height: 28,
                              margin: EdgeInsets.symmetric(horizontal: 8),
                              decoration: BoxDecoration(
                                color: Colors.amber,
                                borderRadius: BorderRadius.circular(6),
                              ),
                              child: Icon(
                                Icons.currency_rupee,
                                size: 16,
                              ),
                            ),
                            Expanded(
                              child: const TextField(
                                keyboardType: TextInputType.number,
                                decoration: InputDecoration(
                                  hintText: "250",
                                  border: InputBorder.none,
                                ),
                              ),
                            ),
                            InkWell(
                              // onPressed: null,

                              child: Container(
                                alignment: Alignment.center,
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  color: AppColors.primaryColor,
                                  borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(11),
                                    bottomRight: Radius.circular(11),
                                  ),
                                ),
                                height: 94,
                                child: PrimaryText(
                                  txt: "Add Now",
                                  size: 14,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        alignment: Alignment.topLeft,
                        margin: EdgeInsets.only(top: 10),
                        child: Wrap(
                          spacing: 8,
                          alignment: WrapAlignment.spaceBetween,
                          children: [
                            TextButton(
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(
                                  Color(0xfff0eefc),
                                ),
                                shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                ),
                              ),
                              onPressed: () => {},
                              child: Text(
                                "250",
                                style: TextStyle(color: Color(0xff6a52bd)),
                              ),
                            ),
                            TextButton(
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(
                                  Color(0xfff0eefc),
                                ),
                                shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                ),
                              ),
                              onPressed: () => {},
                              child: Text(
                                "500",
                                style: TextStyle(color: Color(0xff6a52bd)),
                              ),
                            ),
                            TextButton(
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(
                                  Color(0xfff0eefc),
                                ),
                                shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                ),
                              ),
                              onPressed: () => {},
                              child: Text(
                                "1000",
                                style: TextStyle(color: Color(0xff6a52bd)),
                              ),
                            ),
                            TextButton(
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(
                                  Color(0xfff0eefc),
                                ),
                                shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                ),
                              ),
                              onPressed: () => {},
                              child: Text(
                                "2500",
                                style: TextStyle(color: Color(0xff6a52bd)),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: PrimaryText(
                    txt: "Transactions",
                    size: 18,
                    fontWeight: FontWeight.w700,
                    // color: Colors.black,
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
                  child: Wrap(
                    spacing: 10,
                    children: [
                      OutlinedButton(
                        onPressed: null,
                        child: Text(
                          "Success",
                          style: TextStyle(
                            color: AppColors.primaryColor,
                          ),
                        ),
                        style: OutlinedButton.styleFrom(
                          side: BorderSide(color: AppColors.primaryColor),
                        ),
                      ),
                      OutlinedButton(
                        onPressed: null,
                        child: Text(
                          "Failed",
                          style: TextStyle(
                            color: Colors.red,
                          ),
                        ),
                        style: OutlinedButton.styleFrom(
                          side: BorderSide(color: Colors.red),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  // margin: EdgeInsets.all(value),
                  color: Colors.white,
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 30),
                    decoration: BoxDecoration(
                      // color: Colors.white,
                      border: Border(
                        bottom: BorderSide(
                            width: 1.0, color: Colors.lightBlue.shade900),
                      ),
                    ),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 250,
                              child: PrimaryText(
                                txt:
                                    "Friend Signup on Winzzo with kshdf aksdfh the code",
                                overflow: TextOverflow.visible,
                                size: 14,
                                color: Colors.grey[900],
                              ),
                            ),
                            PrimaryText(
                              txt: "+ \$ 50.75",
                              size: 16,
                              color: AppColors.primaryColor,
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            PrimaryText(
                              txt: "Transaction ID #55555555",
                              size: 15,
                              color: Colors.grey[600],
                            ),
                            PrimaryText(
                              txt: "23 Jul, 2:09am",
                              size: 15,
                              color: Colors.grey[600],
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  // margin: EdgeInsets.all(value),
                  color: Colors.white,
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 30),
                    decoration: BoxDecoration(
                      // color: Colors.white,
                      border: Border(
                        bottom: BorderSide(
                            width: 1.0, color: Colors.lightBlue.shade900),
                      ),
                    ),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 250,
                              child: PrimaryText(
                                txt:
                                    "Friend Signup on Winzzo with kshdf aksdfh the code",
                                overflow: TextOverflow.visible,
                                size: 14,
                                color: Colors.grey[900],
                              ),
                            ),
                            PrimaryText(
                              txt: "+ \$ 50.75",
                              size: 16,
                              color: AppColors.primaryColor,
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            PrimaryText(
                              txt: "Transaction ID #55555555",
                              size: 15,
                              color: Colors.grey[600],
                            ),
                            PrimaryText(
                              txt: "23 Jul, 2:09am",
                              size: 15,
                              color: Colors.grey[600],
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  // margin: EdgeInsets.all(value),
                  color: Colors.white,
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 30),
                    decoration: BoxDecoration(
                      // color: Colors.white,
                      border: Border(
                        bottom: BorderSide(
                            width: 1.0, color: Colors.lightBlue.shade900),
                      ),
                    ),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 250,
                              child: PrimaryText(
                                txt:
                                    "Friend Signup on Winzzo with kshdf aksdfh the code",
                                overflow: TextOverflow.visible,
                                size: 14,
                                color: Colors.grey[900],
                              ),
                            ),
                            PrimaryText(
                              txt: "- \$ 50.75",
                              size: 16,
                              color: Colors.red,
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            PrimaryText(
                              txt: "Transaction ID #55555555",
                              size: 15,
                              color: Colors.grey[600],
                            ),
                            PrimaryText(
                              txt: "23 Jul, 2:09am",
                              size: 15,
                              color: Colors.grey[600],
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  // margin: EdgeInsets.all(value),
                  color: Colors.white,
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 30),
                    decoration: BoxDecoration(
                      // color: Colors.white,
                      border: Border(
                        bottom: BorderSide(
                            width: 1.0, color: Colors.lightBlue.shade900),
                      ),
                    ),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 250,
                              child: PrimaryText(
                                txt:
                                    "Friend Signup on Winzzo with kshdf aksdfh the code",
                                overflow: TextOverflow.visible,
                                size: 14,
                                color: Colors.grey[900],
                              ),
                            ),
                            PrimaryText(
                              txt: "+ \$ 50.75",
                              size: 16,
                              color: AppColors.primaryColor,
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            PrimaryText(
                              txt: "Transaction ID #55555555",
                              size: 15,
                              color: Colors.grey[600],
                            ),
                            PrimaryText(
                              txt: "23 Jul, 2:09am",
                              size: 15,
                              color: Colors.grey[600],
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  // margin: EdgeInsets.all(value),
                  color: Colors.white,
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 30),
                    decoration: BoxDecoration(
                      // color: Colors.white,
                      border: Border(
                        bottom: BorderSide(
                            width: 1.0, color: Colors.lightBlue.shade900),
                      ),
                    ),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 250,
                              child: PrimaryText(
                                txt:
                                    "Friend Signup on Winzzo with kshdf aksdfh the code",
                                overflow: TextOverflow.visible,
                                size: 14,
                                color: Colors.grey[900],
                              ),
                            ),
                            PrimaryText(
                              txt: "+ \$ 50.75",
                              size: 16,
                              color: AppColors.primaryColor,
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            PrimaryText(
                              txt: "Transaction ID #55555555",
                              size: 15,
                              color: Colors.grey[600],
                            ),
                            PrimaryText(
                              txt: "23 Jul, 2:09am",
                              size: 15,
                              color: Colors.grey[600],
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  // margin: EdgeInsets.all(value),
                  color: Colors.white,
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 30),
                    decoration: BoxDecoration(
                      // color: Colors.white,
                      border: Border(
                        bottom: BorderSide(
                            width: 1.0, color: Colors.lightBlue.shade900),
                      ),
                    ),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 250,
                              child: PrimaryText(
                                txt:
                                    "Friend Signup on Winzzo with kshdf aksdfh the code",
                                overflow: TextOverflow.visible,
                                size: 14,
                                color: Colors.grey[900],
                              ),
                            ),
                            PrimaryText(
                              txt: "+ \$ 50.75",
                              size: 16,
                              color: AppColors.primaryColor,
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            PrimaryText(
                              txt: "Transaction ID #55555555",
                              size: 15,
                              color: Colors.grey[600],
                            ),
                            PrimaryText(
                              txt: "23 Jul, 2:09am",
                              size: 15,
                              color: Colors.grey[600],
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
