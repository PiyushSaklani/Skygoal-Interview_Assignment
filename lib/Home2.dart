import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/SecondScreen.dart';

class Home2Screen extends StatefulWidget {
  const Home2Screen({Key? key}) : super(key: key);

  @override
  State<Home2Screen> createState() => _Home2ScreenState();
}

class _Home2ScreenState extends State<Home2Screen> {
  Object selectedindex = 0;

  @override
  Widget build(BuildContext context) {
    int selectedindex = 0;
    Size size = MediaQuery.of(context).size; //* To get the size of the screen
    double vicwInset = MediaQuery.of(context).viewInsets.bottom;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: size.height * 0.16522,
                width: size.width,
                decoration: const BoxDecoration(
                  color: Color(0xFF0E3C6E),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30),
                  ),
                ),
                child: Row(
                  children: [
                    Container(
                      margin:
                          EdgeInsets.fromLTRB(size.width * 0.08644, 0, 0, 0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.fromLTRB(
                                0, size.height * 0.03079, 0, 0),
                            height: size.height * 0.05723,
                            width: size.width * 0.65186,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Row(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(
                                      left: size.width * 0.04088),
                                  child: const Icon(
                                    Icons.search,
                                    color: Color(0xFFD6D6D6),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(
                                      left: size.width * 0.05957),
                                  child: const Text(
                                    "Search for colleges, schools.....",
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xFFD6D6D6)),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(
                                left: size.width * 0.04672,
                                top: size.height * 0.03079),
                            height: size.height * 0.05723,
                            width: size.width * 0.12850,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Colors.white),
                            child: const Icon(
                              Icons.mic,
                              color: Color(0xFF0E3C6E),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 25),
                width: size.width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // margin: const EdgeInsets.only(left: 5),
                      height: 20,
                      width: (size.width / 3) - 10,
                      alignment: Alignment.center,
                      // color: Colors.amber,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black54, width: 1),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: const Text(
                        "MVSH Engineering college",
                        style: TextStyle(color: Colors.black, fontSize: 9),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 5),
                      height: 20,
                      width: (size.width / 3) - 10,
                      alignment: Alignment.center,
                      // color: Colors.amber,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black54, width: 1),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: const Text(
                        "MVSH Engineering college",
                        style: TextStyle(color: Colors.black, fontSize: 9),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 5),
                      height: 20,
                      width: (size.width / 3) - 10,
                      alignment: Alignment.center,
                      // color: Colors.amber,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black54, width: 1),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: const Text(
                        "MVSH Engineering college",
                        style: TextStyle(color: Colors.black, fontSize: 9),
                      ),
                    ),
                  ],
                ),
              ),
              Collegebox(
                  size, "Assets/Images/C1.png", "GHJK Engineering college"),
              Collegebox(
                  size, "Assets/Images/C2.png", "Bachelor of Technology"),
              Collegebox(
                  size, "Assets/Images/C3.png", "MVSH Engineering college"),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Row(
        children: [
          newMethod(size, 0, Icons.home, "Home"),
          newMethod(size, 1, Icons.bookmark, "Save"),
          newMethod(size, 2, Icons.find_in_page, "Search"),
          newMethod(size, 3, Icons.account_box, "Main")
        ],
      ),
    );
  }

  Stack Collegebox(Size size, String imageaddress, String college) {
    return Stack(
      children: [
        Container(
          margin: const EdgeInsets.only(top: 26, left: 37, right: 37),
          height: size.height * 0.28241,
          width: size.width * 0.82710,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                spreadRadius: 5,
                blurRadius: 10,
                offset: const Offset(0, 3),
              ),
            ],
          ),
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    height: size.height * 0.12526,
                    width: size.width * 0.82710,
                    // color: Colors.blue,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(imageaddress),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 10, left: 10),
                    height: 30,
                    width: 30,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle, color: Colors.white),
                    child: const Icon(
                      Icons.share,
                      size: 20,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 10, left: 280),
                    height: 30,
                    width: 30,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle, color: Colors.white),
                    child: const Icon(
                      Icons.bookmark,
                      size: 20,
                    ),
                  ),
                ],
              ),
              Container(
                margin: const EdgeInsets.only(top: 9, left: 20),
                child: Row(
                  children: [
                    SizedBox(
                      width: 170,
                      child: Text(
                        college,
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 85),
                      padding: const EdgeInsets.only(left: 8),
                      height: 20,
                      width: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.green),
                      child: Row(
                        children: const [
                          Text(
                            "4.3",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          Icon(
                            Icons.star,
                            size: 16,
                            color: Colors.white,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 9, left: 20),
                child: Row(
                  children: [
                    SizedBox(
                      width: size.width * 0.48364,
                      child: const Text(
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Eu ut imperdiet sed nec ullamcorper.",
                        style: TextStyle(fontSize: 9),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 35),
                      padding: const EdgeInsets.only(left: 10),
                      height: 20,
                      width: 70,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: const Color(0xFF0E3C6E)),
                      child: Row(
                        children: const [
                          Text(
                            "Apply Now",
                            style: TextStyle(
                                fontSize: 10,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 12),
                width: size.width * 0.7476635514,
                height: 1,
                color: Colors.black54,
              ),
              Container(
                margin: const EdgeInsets.only(top: 9, left: 10),
                child: Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(right: 5),
                      height: 26,
                      width: 26,
                      // color: Colors.black,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("Assets/Images/Like1.png"),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: size.width * 0.48364,
                      child: const Text(
                        "More than 1000+ students have been placed",
                        style: TextStyle(fontSize: 9),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 10),
                      padding: const EdgeInsets.only(left: 10),
                      height: 20,
                      width: 70,
                      // decoration: BoxDecoration(
                      //     borderRadius: BorderRadius.circular(5),
                      //     color: const Color(0xFF0E3C6E)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Icon(
                            Icons.visibility,
                            color: Colors.black54,
                            size: 20,
                          ),
                          Container(
                            margin: const EdgeInsets.only(left: 5),
                            child: const Text(
                              "467+",
                              style: TextStyle(
                                  fontSize: 10,
                                  color: Colors.black54,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        FlatButton(
          onPressed: () {
            log("message");
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const SecondScreen()),
            );
          },
          child: Container(
            margin: const EdgeInsets.only(top: 26, left: 37, right: 37),
            height: size.height * 0.28241,
            width: size.width * 0.82710,
            // color: Colors.black,
          ),
        ),
      ],
    );
  }

  GestureDetector newMethod(Size size, int index, IconData icon, String text) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedindex = index;
        });
      },
      child: Container(
        height: size.height * 0.07667,
        width: size.width / 4,
        color: const Color(0xFF0E3C6E),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              color: index == selectedindex
                  ? Colors.white
                  : const Color(0xFFBBBBBB),
            ),
            Text(
              text,
              style: TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.bold,
                  color: index == selectedindex
                      ? Colors.white
                      : const Color(0xFFBBBBBB)),
            ),
            Container(
              margin: const EdgeInsets.only(top: 4),
              height: 2.5,
              width: (size.width / 4) - 30,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: index == selectedindex
                    ? Colors.white
                    : const Color(0xFF0E3C6E),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
