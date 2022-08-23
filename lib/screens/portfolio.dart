import 'package:demo/widgets/cards/custom_multi_card.dart';
import 'package:demo/widgets/primary_text.dart';
import 'package:flutter/material.dart';

class Page3 extends StatelessWidget {
  const Page3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Container(
            color: Colors.white,
            child: Container(
              margin: const EdgeInsets.only(left: 30, right: 30, top: 15),
              height: 110,
              // color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          PrimaryText(
                            txt: "Portfolio",
                            size: 22,
                            fontWeight: FontWeight.w900,
                          ),
                          const Text("Across live and closed events"),
                        ],
                      ),
                      Row(
                        children: [
                          Column(
                            children: [
                              TextButton(
                                onPressed: null,
                                child: Text('Live'),
                              ),
                              Container(
                                width: 70,
                                height: 5,
                                padding: EdgeInsets.zero,
                                decoration: const BoxDecoration(
                                  color: Colors.amber,
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(20),
                                    topRight: Radius.circular(20),
                                  ),
                                ),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              const TextButton(
                                onPressed: null,
                                child: Text('Closed'),
                              ),
                              Container(
                                width: 70,
                                height: 3,
                                // decoration: BoxDecoration(
                                //   color: Colors.amber,
                                //   borderRadius: BorderRadius.only(
                                //     topLeft: Radius.circular(20),
                                //     topRight: Radius.circular(20),
                                //   ),
                                // ),
                              )
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Image.asset(
                        'assets/images/logo.png',
                        width: 130,
                        height: 90,
                      ),
                      PrimaryText(
                        txt: "View Leaderboard",
                        size: 14,
                        fontWeight: FontWeight.w600,
                        color: Colors.amber,
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          CustomMultiCard(
            child: Row(
              children: [
                Column(
                  children: [],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
