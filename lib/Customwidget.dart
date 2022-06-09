import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/Home2.dart';

class Customwidget_1 extends StatelessWidget {
  String title;
  String about;
  String addressOFimage;
  String noOf;
  String withnoOf;
  int selectedindex = 0;
  Customwidget_1(
      {required this.about,
      required this.addressOFimage,
      required this.noOf,
      required this.title,
      required this.withnoOf});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size; //* To get the size of the screen
    double vicwInset = MediaQuery.of(context).viewInsets.bottom;
    return Container(
      margin: EdgeInsets.fromLTRB(
          size.width * 0.08644, size.height * 0.02159, size.width * 0.08644, 0),
      child: Stack(
        children: [
          Container(
            alignment: Alignment.bottomRight,
            height: size.height * 0.17062,
            width: size.width * 0.82710,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(addressOFimage),
                fit: BoxFit.fill,
              ),
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          Container(
            alignment: Alignment.bottomRight,
            height: size.height * 0.17062,
            width: size.width * 0.82710,
            child: CustomPaint(
              size: const Size(110, 50),
              painter: CustomShape(),
            ),
          ),
          Container(
            alignment: Alignment.bottomRight,
            height: size.height * 0.17062,
            width: size.width * 0.82710,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                  margin:
                      const EdgeInsets.only(left: 258, bottom: 10, right: 2),
                  child: Text(
                    noOf,
                    style: const TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 10),
                  child: Text(
                    withnoOf,
                    style: const TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: Color(0x80000000)),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(
                top: size.height * 0.02051, left: size.width * 0.04906),
            alignment: Alignment.topLeft,
            height: size.height * 0.17062,
            width: size.width * 0.82710,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 21),
                ),
                Container(
                  margin: EdgeInsets.only(top: size.height * 0.00647),
                  width: size.width * 0.47196,
                  child: Text(
                    about,
                    style: const TextStyle(fontSize: 12, color: Colors.white),
                  ),
                )
              ],
            ),
          ),
          FlatButton(
            child: SizedBox(
              height: size.height * 0.17062,
              width: size.width * 0.82710,
            ),
            onLongPress: () => showModalBottomSheet(
              context: context,
              builder: (context) => buildsheet(),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Home2Screen()),
              );
            },
          ),
        ],
      ),
    );
  }

  Widget buildsheet() => Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10),
            topRight: Radius.circular(10),
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.only(top: 28, left: 38),
              child: Row(
                children: [
                  Container(
                    child: const Text(
                      "Sort by",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 240),
                    child: const Icon(
                      Icons.clear,
                      size: 24,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(
                  top: 20, bottom: 44, left: 30, right: 30),
              height: 2,
              width: 400,
              decoration: BoxDecoration(
                  color: const Color(0x33000000),
                  borderRadius: BorderRadius.circular(50)),
            ),
            BottomSheetMethod(Icons.add, "Bachelor of Technology", 0),
            BottomSheetMethod(Icons.add, "Bachelor of Architecture", 1),
            BottomSheetMethod(Icons.add, "Pharmacy", 2),
            BottomSheetMethod(Icons.add, "Law", 3),
            BottomSheetMethod(Icons.add, "Management", 4),
            Container(
              height: 30,
            )
          ],
        ),
      );

  GestureDetector BottomSheetMethod(IconData icon, String text, int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedindex = index;
        });
      },
      child: Container(
        margin: const EdgeInsets.only(left: 35, bottom: 20),
        height: 25,
        width: 330,
        child: Stack(
          children: [
            Row(
              children: [
                Icon(icon),
                Container(
                  margin: const EdgeInsets.only(left: 15),
                  width: 265,
                  child: Text(
                    text,
                    style: const TextStyle(fontSize: 18),
                  ),
                ),
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      height: 18,
                      width: 18,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black, width: 2),
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                    Container(
                      height: 9,
                      width: 9,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: index == selectedindex
                              ? Colors.black
                              : Colors.white),
                    ),
                  ],
                ),
              ],
            ),
            FlatButton(
              onPressed: () => {log("Work Done..")},
              child: const SizedBox(
                height: 30,
                width: 330,
              ),
            ),
          ],
        ),
      ),
    );
  }

  void setState(Null Function() param0) {}
}

class CustomShape extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint0 = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.fill
      ..strokeWidth = 2;

    Path path0 = Path();
    path0.moveTo(0, size.height);
    path0.quadraticBezierTo(size.width * 0.1996800, size.height * 0.9991333,
        size.width * 0.2008000, size.height * 0.6665333);
    path0.quadraticBezierTo(size.width * 0.2009600, size.height * 0.3342000,
        size.width * 0.4010400, size.height * 0.3339333);
    path0.cubicTo(
        size.width * 0.5009200,
        size.height * 0.3336167,
        size.width * 0.7006800,
        size.height * 0.3329833,
        size.width * 0.8005600,
        size.height * 0.3326667);
    path0.cubicTo(size.width * 1.0011200, size.height * 0.3328000,
        size.width * 0.9925200, size.height * 0.1442667, size.width, 0);
    path0.quadraticBezierTo(size.width * 1.0096400, size.height * 0.6221333,
        size.width, size.height);
    path0.quadraticBezierTo(
        size.width * 0.7134000, size.height * 1.0290000, 0, size.height);
    path0.close();

    canvas.drawPath(path0, paint0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
