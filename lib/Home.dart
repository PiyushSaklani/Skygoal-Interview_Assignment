import 'package:flutter/material.dart';
import 'package:flutter_application_1/Customwidget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Object selectedindex = 0;

  @override
  Widget build(BuildContext context) {
    int selectedindex = 0;
    Size size = MediaQuery.of(context).size; //* To get the size of the screen
    double vicwInset = MediaQuery.of(context).viewInsets.bottom;
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: size.height * 0.23298,
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
                    margin: EdgeInsets.fromLTRB(size.width * 0.08644, 0, 0, 0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(
                              0, size.height * 0.04291, 0, 0),
                          child: const Text(
                            "Find your own way",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(
                              0, size.height * 0.00863, 0, 0),
                          child: const Text(
                            "Search in 600 colleges around!",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(
                              0, size.height * 0.04319, 0, 0),
                          height: size.height * 0.05723,
                          width: size.width * 0.65186,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Row(
                            children: [
                              Container(
                                margin:
                                    EdgeInsets.only(left: size.width * 0.04088),
                                child: const Icon(
                                  Icons.search,
                                  color: Color(0xFFD6D6D6),
                                ),
                              ),
                              Container(
                                margin:
                                    EdgeInsets.only(left: size.width * 0.05957),
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
                      ],
                    ),
                  ),
                  Container(
                    width: size.width * 0.04672,
                  ),
                  Container(
                    margin: EdgeInsets.only(
                        right: size.width * 0.08644,
                        top: size.height * 0.04005),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Stack(
                          children: [
                            const SizedBox(
                              height: 20,
                              width: 20,
                              child: Icon(
                                Icons.notifications,
                                color: Colors.white,
                              ),
                            ),
                            Container(
                              alignment: Alignment.topRight,
                              height: 20,
                              width: 20,
                              child: Container(
                                width: 8,
                                height: 8,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: const Color(0xffc32c37),
                                  border: Border.all(
                                      color: const Color(0xFF0E3C6E), width: 1),
                                ),
                              ),
                            )
                          ],
                        ),
                        Container(
                          margin: EdgeInsets.only(top: size.height * 0.07763),
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
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: size.height * 0.02159),
              child: Column(
                children: [
                  Customwidget_1(
                      about:
                          "Search through thousands of accredited colleges and universities online to find the right one for you. Apply in 3 min, and connect with your future.",
                      addressOFimage: "Assets/Images/Graduation.jpeg",
                      noOf: "+126",
                      title: "Top Colleges",
                      withnoOf: "Colleges"),
                  Customwidget_1(
                      about:
                          "Searching for the best school for you just get easier! With our Advanced School Search, you can easily filter out the schools that are fit for you.",
                      addressOFimage: "Assets/Images/P2.jpeg",
                      noOf: "+106",
                      title: "Top Schools",
                      withnoOf: "Schools"),
                  Customwidget_1(
                      about:
                          "Find an end to end information about the exams that are happening in India",
                      addressOFimage: "Assets/Images/P1.jpeg",
                      noOf: "+16",
                      title: "Exams",
                      withnoOf: "Exams"),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Row(
        children: [
          newMethod(size, 0, Icons.home, "Home"),
          newMethod(size, 1, Icons.save, "Save"),
          newMethod(size, 2, Icons.search, "Search"),
          newMethod(size, 3, Icons.account_balance, "Main")
        ],
      ),
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
            )
          ],
        ),
      ),
    );
  }
}
