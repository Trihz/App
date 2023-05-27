import 'package:agrogis/cart/cart_logic.dart';
import 'package:flutter/material.dart';

class CartUI extends StatefulWidget {
  const CartUI({super.key});

  @override
  State<CartUI> createState() => _CartUIState();
}

class _CartUIState extends State<CartUI> {
  /// defining the main colors
  Color mainColor = const Color.fromARGB(255, 43, 145, 46);

  /// list for storing the subscritpions
  List subscriptions1Values = [];
  List subscriptions2Values = [];

  /// widget to display the safearea
  Widget safeArea() {
    return SizedBox(height: MediaQuery.of(context).size.height * 0.05);
  }

  /// widget to display the search bar
  Widget searchBar() {
    return Container(
      height: MediaQuery.of(context).size.height * 0.06,
      width: MediaQuery.of(context).size.width * 0.95,
      decoration: const BoxDecoration(color: Colors.white),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: const Icon(
                Icons.arrow_back_ios,
                size: 20,
                color: Colors.black,
              )),
          const SizedBox(width: 20),
          Container(
              height: MediaQuery.of(context).size.height * 0.04,
              width: MediaQuery.of(context).size.width * 0.6,
              decoration: const BoxDecoration(color: Colors.transparent),
              child: const TextField(
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black, width: 0.5),
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black, width: 0.5),
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black, width: 0.5),
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                  ),
                  hintText: 'Type the subscription you want',
                  hintStyle: TextStyle(
                    color: Color.fromARGB(255, 82, 82, 82),
                    fontSize: 11,
                  ),
                ),
              )),
          const SizedBox(width: 20),
          Container(
              height: 25,
              width: 25,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(5)),
                image: DecorationImage(
                  image: AssetImage('assets/cart.png'),
                  fit: BoxFit.fill,
                ),
              )),
        ],
      ),
    );
  }

  /// widget to display the first subscriptions
  Widget subscriptions1() {
    return SingleChildScrollView(
      child: Container(
        width: MediaQuery.of(context).size.width * 1,
        decoration: const BoxDecoration(color: Colors.white),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.06,
              width: MediaQuery.of(context).size.width * 0.93,
              decoration: const BoxDecoration(color: Colors.white),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Subscriptions",
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/myplans');
                    },
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.04,
                      width: MediaQuery.of(context).size.width * 0.4,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                      ),
                      child: Center(
                        child: Row(
                          children: [
                            Text(
                              "My Subscriptions",
                              style: TextStyle(
                                  color: mainColor,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400),
                            ),
                            const SizedBox(width: 5),
                            Opacity(
                                opacity: 0.6,
                                child: Icon(
                                  Icons.arrow_forward_ios,
                                  color: mainColor,
                                  size: 15,
                                ))
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.35,
              width: MediaQuery.of(context).size.width * 0.95,
              decoration: const BoxDecoration(color: Colors.white),
              child: ListView.builder(
                  itemCount: subscriptions1Values.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: ((context, index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, '/subscriptiondetails');
                      },
                      child: Stack(
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                height:
                                    MediaQuery.of(context).size.height * 0.29,
                                width: MediaQuery.of(context).size.width * 0.45,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                        color: const Color.fromARGB(
                                                255, 119, 119, 119)
                                            .withOpacity(0.2),
                                        spreadRadius: 1,
                                        blurRadius: 1,
                                        offset: const Offset(0, 1),
                                      ),
                                    ],
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(5))),
                                child: Column(
                                  children: [
                                    Container(
                                        height: 80,
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.45,
                                        decoration: const BoxDecoration(
                                          borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(5),
                                              topRight: Radius.circular(5)),
                                          image: DecorationImage(
                                            image: AssetImage(
                                                'assets/subscription_photo.png'),
                                            fit: BoxFit.fill,
                                          ),
                                        )),
                                    Container(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.1,
                                      width: MediaQuery.of(context).size.width *
                                          0.5,
                                      margin: const EdgeInsets.only(
                                          right: 10,
                                          left: 10,
                                          bottom: 5,
                                          top: 10),
                                      padding: const EdgeInsets.only(
                                          left: 5, right: 3),
                                      decoration: const BoxDecoration(
                                        color: Colors.white,
                                      ),
                                      child: Text(
                                        subscriptions1Values[index][1],
                                        style: const TextStyle(
                                            fontSize: 11,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Container(
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              0.04,
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.3,
                                          margin:
                                              const EdgeInsets.only(right: 5),
                                          decoration: const BoxDecoration(
                                              color: Colors.white),
                                          child: Center(
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  subscriptions1Values[index]
                                                      [2],
                                                  style: TextStyle(
                                                      color: mainColor,
                                                      fontSize: 12,
                                                      fontWeight:
                                                          FontWeight.w700),
                                                ),
                                                Text(
                                                  "VIEW",
                                                  style: TextStyle(
                                                      color: mainColor,
                                                      fontSize: 11,
                                                      fontWeight:
                                                          FontWeight.w500),
                                                ),
                                              ],
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                height:
                                    MediaQuery.of(context).size.height * 0.04,
                                width: MediaQuery.of(context).size.width * 0.45,
                                padding:
                                    const EdgeInsets.only(top: 4, bottom: 4),
                                margin: const EdgeInsets.only(
                                    right: 10, left: 10, bottom: 5),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.2),
                                        spreadRadius: 1,
                                        blurRadius: 1,
                                        offset: const Offset(0, 1),
                                      ),
                                    ],
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(0))),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset("assets/cart.png"),
                                    const SizedBox(width: 10),
                                    Text(
                                      "ADD TO CART",
                                      style: TextStyle(
                                          fontSize: 11,
                                          fontWeight: FontWeight.w600,
                                          color: mainColor),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Positioned(
                            top: 3,
                            left: 10,
                            child: Container(
                              height: MediaQuery.of(context).size.height * 0.05,
                              width: MediaQuery.of(context).size.width * 0.28,
                              decoration: BoxDecoration(
                                  color: mainColor,
                                  borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(5),
                                      bottomRight: Radius.circular(10))),
                              child: Center(
                                child: Text(
                                  subscriptions1Values[index][0],
                                  style: const TextStyle(
                                      fontSize: 11,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    );
                  })),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.04),
            Container(
              height: MediaQuery.of(context).size.height * 0.35,
              width: MediaQuery.of(context).size.width * 0.95,
              decoration: const BoxDecoration(color: Colors.white),
              child: ListView.builder(
                  itemCount: subscriptions2Values.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: ((context, index) {
                    return Stack(
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              height: MediaQuery.of(context).size.height * 0.29,
                              width: MediaQuery.of(context).size.width * 0.45,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                      color: const Color.fromARGB(
                                              255, 119, 119, 119)
                                          .withOpacity(0.2),
                                      spreadRadius: 1,
                                      blurRadius: 1,
                                      offset: const Offset(0, 1),
                                    ),
                                  ],
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(5))),
                              child: Column(
                                children: [
                                  Container(
                                      height: 80,
                                      width: MediaQuery.of(context).size.width *
                                          0.45,
                                      decoration: const BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(5),
                                            topRight: Radius.circular(5)),
                                        image: DecorationImage(
                                          image: AssetImage(
                                              'assets/subscription_photo.png'),
                                          fit: BoxFit.fill,
                                        ),
                                      )),
                                  Container(
                                    height: MediaQuery.of(context).size.height *
                                        0.1,
                                    width:
                                        MediaQuery.of(context).size.width * 0.5,
                                    margin: const EdgeInsets.only(
                                        right: 10,
                                        left: 10,
                                        bottom: 5,
                                        top: 10),
                                    padding: const EdgeInsets.only(
                                        left: 5, right: 3),
                                    decoration: const BoxDecoration(
                                      color: Colors.white,
                                    ),
                                    child: Text(
                                      subscriptions2Values[index][1],
                                      style: const TextStyle(
                                          fontSize: 11,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.04,
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.15,
                                        margin: const EdgeInsets.only(right: 5),
                                        decoration: const BoxDecoration(
                                            color: Colors.white),
                                        child: Center(
                                          child: Text(
                                            subscriptions2Values[index][2],
                                            style: TextStyle(
                                                color: mainColor,
                                                fontSize: 12,
                                                fontWeight: FontWeight.w700),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              height: MediaQuery.of(context).size.height * 0.04,
                              width: MediaQuery.of(context).size.width * 0.45,
                              padding: const EdgeInsets.only(top: 4, bottom: 4),
                              margin: const EdgeInsets.only(
                                  right: 10, left: 10, bottom: 5),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.2),
                                      spreadRadius: 1,
                                      blurRadius: 1,
                                      offset: const Offset(0, 1),
                                    ),
                                  ],
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(0))),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset("assets/cart.png"),
                                  const SizedBox(width: 10),
                                  Text(
                                    "ADD TO CART",
                                    style: TextStyle(
                                        fontSize: 11,
                                        fontWeight: FontWeight.w600,
                                        color: mainColor),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Positioned(
                          top: 3,
                          left: 10,
                          child: Container(
                            height: MediaQuery.of(context).size.height * 0.05,
                            width: MediaQuery.of(context).size.width * 0.28,
                            decoration: BoxDecoration(
                                color: mainColor,
                                borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(5),
                                    bottomRight: Radius.circular(10))),
                            child: Center(
                              child: Text(
                                subscriptions2Values[index][0],
                                style: const TextStyle(
                                    fontSize: 11,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                          ),
                        )
                      ],
                    );
                  })),
            ),
          ],
        ),
      ),
    );
  }

  /// initial function of this screen
  @override
  void initState() {
    subscriptions1Values = CartLogic().getSubscriptions1Values();
    subscriptions2Values = CartLogic().getSubscriptions2Values();
    print(subscriptions1Values);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height * 1,
        width: MediaQuery.of(context).size.width * 1,
        decoration: const BoxDecoration(color: Colors.white),
        child: Column(
          children: [
            safeArea(),
            searchBar(),
            SizedBox(height: MediaQuery.of(context).size.height * 0.02),
            subscriptions1()
          ],
        ),
      ),
    );
  }
}
