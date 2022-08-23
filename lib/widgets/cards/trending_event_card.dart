import 'package:demo/util/colors.dart';
import 'package:demo/widgets/cards/custom_multi_card.dart';
import 'package:flutter/material.dart';

class TrendingEventCard extends StatefulWidget {
  final Widget child;
  const TrendingEventCard({Key? key, required this.child}) : super(key: key);

  @override
  State<TrendingEventCard> createState() => _TrendingEventCardState();
}

class _TrendingEventCardState extends State<TrendingEventCard> {
  @override
  Widget build(BuildContext context) {
    return CustomMultiCard(
        elevation: 2,
        child: SizedBox(
          height: 165,
          child: Row(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/images/logo.png'),
                    radius: 34,
                  ),
                  Row(
                    children: [
                      Icon(Icons.fire_extinguisher_outlined),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Volume"),
                          Row(
                            children: const [
                              Icon(
                                Icons.currency_rupee,
                                size: 14,
                              ),
                              Text("2000"),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 180,
                              child: Text(
                                "data kaskdfjhasdfk sjdfh skdjfh sdfkjhsdf ksdfhkajh dsf, jaksdhf askdfjh sdfkjh sdfkjhask dfksadfh kasjdfh aksdjfh aksdjfh askdfj askdfj ",
                                overflow: TextOverflow.visible,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 4),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.timer_outlined,
                                    size: 18,
                                    color: Colors.redAccent,
                                  ),
                                  Text(
                                    "ENDS IN 8 HOURS",
                                    style: TextStyle(color: Colors.red),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                        Container(
                          width: 32,
                          height: 32,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                              color: Colors.grey[300]),
                          child: Icon(Icons.share_outlined),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        TextButton(
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(
                              AppColors.primaryColor,
                            ),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                            ),
                          ),
                          onPressed: () => {},
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 16),
                            child: Row(
                              children: [
                                Text(
                                  "YES",
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                                Icon(
                                  Icons.currency_rupee,
                                  size: 14,
                                  color: Colors.white,
                                ),
                                Text(
                                  "5",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        TextButton(
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(
                              AppColors.secondaryColor,
                            ),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                            ),
                          ),
                          onPressed: () => {},
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 16),
                            child: Row(
                              children: [
                                Text(
                                  "NO",
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                                Icon(
                                  Icons.currency_rupee,
                                  size: 14,
                                  color: Colors.white,
                                ),
                                Text(
                                  "5",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
