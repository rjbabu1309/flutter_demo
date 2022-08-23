import 'package:demo/screens/wallet.dart';
import 'package:demo/screens/profile.dart';
import 'package:demo/util/colors.dart';
import 'package:demo/widgets/cards/trending_event_card.dart';
import 'package:demo/widgets/example_card_item.dart';
import 'package:demo/widgets/primary_text.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              /*  This is the app bar */
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () => {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Profile()))
                      },
                      child: Stack(
                        children: [
                          Image.asset(
                            'assets/images/logo.png',
                            width: 90,
                            height: 90,
                          ),
                          Positioned(
                            left: 53,
                            top: 42,
                            child: Container(
                              width: 24,
                              height: 24,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Icon(Icons.menu, size: 18),
                            ),
                          )
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        Container(
                          width: 45,
                          height: 45,
                          margin: EdgeInsets.only(right: 10),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(25),
                          ),
                          child: Center(
                            child: Stack(
                              children: [
                                Icon(Icons.notifications),
                                Container(
                                  margin: EdgeInsets.only(left: 14),
                                  width: 10,
                                  height: 10,
                                  decoration: BoxDecoration(
                                    color: Colors.red,
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        GestureDetector(
                          child: Container(
                            width: 120,
                            height: 58,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(30)),
                              gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [
                                  Colors.green.shade600,
                                  Colors.purple.shade900,
                                ],
                              ),
                            ),
                            child: Container(
                              width: 118,
                              height: 56,
                              padding: EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 6),
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: Colors.amberAccent,
                                borderRadius: BorderRadius.circular(30),
                                gradient: LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  colors: [
                                    Colors.white,
                                    Color.fromARGB(255, 219, 253, 220),
                                  ],
                                ),
                              ),
                              child: Row(
                                children: [
                                  Container(
                                    margin: EdgeInsets.all(3),
                                    height: 25,
                                    width: 25,
                                    // color: Colors.amberAccent,
                                    decoration: BoxDecoration(
                                      color: Color(0xFF4CAF50),
                                      borderRadius: BorderRadius.circular(12.5),
                                    ),
                                    child: Icon(
                                      Icons.add,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text("Balance"),
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.currency_rupee,
                                            size: 18,
                                          ),
                                          SizedBox(
                                            height: 25,
                                          ),
                                          Text("-25000")
                                        ],
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              /* This is the steps to guide which suppose to vanish when user clicks got it */
              Container(
                width: double.infinity,
                padding: EdgeInsets.only(left: 30, top: 20, bottom: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    PrimaryText(
                      txt: "3 Simple steps to use winzzo",
                      size: 18,
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      padding: EdgeInsets.symmetric(vertical: 20),
                      child: Row(
                        children: [
                          exampleCardItem(
                            index: 1,
                            title: "Choose an event",
                            descrioption:
                                "Ranging from politics, sport and more",
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          exampleCardItem(
                            index: 2,
                            title: "Choose an event",
                            descrioption:
                                "Ranging from politics, sport and more",
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          exampleCardItem(
                            index: 3,
                            title: "Choose an event",
                            descrioption:
                                "Ranging from politics, sport and more",
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              /* Trainding now */
              SizedBox(
                width: double.infinity,
                height: 50,
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 30),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          PrimaryText(txt: "Trending Events"),
                          InkWell(
                            onTap: () {
                              ScaffoldMessenger.of(context)
                                  .showSnackBar(const SnackBar(
                                content: Text('Tap'),
                              ));
                            },
                            child: InkWell(
                              // focusColor: Colors.red[700],
                              onTap: () => {},
                              child: Row(
                                children: [
                                  PrimaryText(
                                    txt: "All Events",
                                    color: AppColors.primaryColor,
                                  ),
                                  Icon(
                                    Icons.arrow_forward_ios_rounded,
                                    size: 18,
                                    color: AppColors.primaryColor,
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              TrendingEventCard(
                child: Text("raja"),
              ),
              TrendingEventCard(
                child: Text("raja"),
              ),
              TrendingEventCard(
                child: Text("raja"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
