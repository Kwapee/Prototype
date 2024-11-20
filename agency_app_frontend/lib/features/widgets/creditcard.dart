import 'package:flutter/material.dart';

import '../../data/utility.dart';

class CreditCard extends StatelessWidget {
  const CreditCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 220,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Column(
            children: [
              Expanded(
                  flex: 2,
                  child: Container(
                    color: Colors.black,
                    child: Stack(
                      children: [
                        Positioned(
                            top: 16,
                            left: 16,
                            child: Image.asset(
                              "assets/images/credit-card.png",
                              height: 40,
                              color: Colors.white,
                            )),
                        Positioned(
                            top: 10,
                            left: 70,
                            child: Image.asset(
                              "assets/images/wifi.png",
                              height: 50,
                              color: Colors.white,
                            )),
                        Padding(
                          padding: const EdgeInsets.only(top: 80, left: 15),
                          child: Row(
                            children: [
                              CircleAvatar(
                                radius: 13,
                                backgroundColor: Colors.red,
                                child: Icon(
                                  Icons.arrow_downward,
                                  color: Colors.white,
                                  size: 19,
                                ),
                              ),
                              SizedBox(width: 7),
                              Text(
                                'Income',
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16,
                                  color: Color.fromARGB(255, 216, 216, 216),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 80, left: 220),
                          child: Row(
                            children: [
                              CircleAvatar(
                                radius: 13,
                                backgroundColor: Colors.red,
                                child: Icon(
                                  Icons.arrow_upward,
                                  color: Colors.white,
                                  size: 19,
                                ),
                              ),
                              SizedBox(width: 7),
                              Text(
                                'Expenses',
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16,
                                  color: Color.fromARGB(255, 216, 216, 216),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 6),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 30,),
                          child: Padding(
                            padding: const EdgeInsets.only(top: 110),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  '\Ghc ${income()}',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 17,
                                    color: Colors.white,
                                  ),
                                ),
                                Text(
                                  '\Ghc ${expenses()}',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 17,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  )),
              Expanded(
                  flex: 1,
                  child: Container(
                    color: Colors.red,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 15),
                                child: Text("Total Balance: ", style: TextStyle(color: Colors.white, ),),
                              ),
                              Text(
                            "\Ghc ${total()}",
                            style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              CircleAvatar(
                                radius: 15,
                                backgroundColor: Colors.white.withOpacity(0.8),
                              ),
                              Transform.translate(
                                offset: Offset(-10, 0),
                                child: CircleAvatar(
                                  radius: 15,
                                  backgroundColor:
                                      Colors.white.withOpacity(0.8),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  )),
            ],
          ),
        ));
  }
}
