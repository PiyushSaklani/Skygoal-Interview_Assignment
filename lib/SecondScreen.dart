import 'dart:developer';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Home2.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  int selectedindex = 0;
  int val = 0;
  final urlImages = [
    "https://media-cdn.tripadvisor.com/media/photo-s/16/45/16/dd/the-mood-luxury-rooms.jpg",
    "https://www.mews.com/hubfs/Increasing%20revenue%20with%20day%20use%20rooms_Hero%20-%201245x1014.png",
    "https://q-xx.bstatic.com/xdata/images/hotel/840x460/208086215.jpg?k=af5b31fd51781a293cb97b7bbb56f38e27f114f0d5ece2eca4424ea41b33da5d&o=",
    "https://s7d2.scene7.com/is/image/ritzcarlton/pnqrz-king-50668318?",
    "https://shangrila.com.ba/en/media/k2/items/cache/e529a8dc22bd84a37f6f8ae6b8ce40d3_L.jpg"
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size; //* To get the size of the screen
    double vicwInset = MediaQuery.of(context).viewInsets.bottom;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    height: size.height * 0.093,
                    width: size.width,
                    color: const Color(0xFF0E3C6E),
                  ),
                  FlatButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Home2Screen()),
                      );
                    },
                    child: Container(
                      margin: EdgeInsets.only(
                          top: size.height * 0.02267,
                          left: size.width * 0.01542),
                      height: 40,
                      width: 40,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle, color: Colors.white),
                      child: const Icon(
                        Icons.arrow_back,
                        color: Color(0xFF0E3C6E),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                        top: size.height * 0.02267, left: size.width * 0.83411),
                    height: 40,
                    width: 40,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle, color: Colors.white),
                    child: const Icon(
                      Icons.bookmark,
                      color: Color(0xFF0E3C6E),
                    ),
                  ),
                ],
              ),
              Container(
                height: size.height * 0.24265,
                width: size.width,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                        "https://upload.wikimedia.org/wikipedia/commons/a/a9/University_of_Otago.jpg"),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(
                        top: size.height * 0.01727, left: size.width * 0.04439),
                    width: 270,
                    child: Column(
                      children: [
                        Container(
                          alignment: Alignment.centerLeft,
                          child: const Text(
                            "GHJK Engineering college",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: size.height * 0.01727),
                          // width: 200,
                          child: const Text(
                            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Felis consectetur nulla pharetra praesent hendrerit vulputate viverra. Pellentesque aliquam tempus faucibus est.",
                            style:
                                TextStyle(fontSize: 12, color: Colors.black45),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(top: 10),
                    margin: EdgeInsets.only(
                        left: size.width * 0.09577, top: size.height * 0.01727),
                    height: 70,
                    width: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.green,
                    ),
                    child: Column(
                      children: [
                        const Text(
                          "4.3",
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 5),
                          child: const Icon(
                            Icons.star,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Container(
                margin: const EdgeInsets.only(top: 20),
                height: 40,
                width: size.width,
                color: Colors.black,
                child: Row(
                  children: [
                    newMethod(size, "About college", 0),
                    newMethod(size, "Hostel facility", 1),
                    newMethod(size, "Q & A", 2),
                    newMethod(size, "Events", 3)
                  ],
                ),
              ),
              Container(
                child: selectedindex == 0
                    ? AboutCollege(size)
                    : HostelFacility(size),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: 70,
        width: 100,
        color: const Color(0x1AFFFFFF),
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 10),
              alignment: Alignment.center,
              height: 50,
              width: size.width - 60,
              decoration: BoxDecoration(
                color: const Color(0xFF0E3C6E),
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Text(
                "Apply Now",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container HostelFacility(Size size) {
    return Container(
      child: Column(
        children: [
          Row(
            children: [
              Container(
                margin: const EdgeInsets.only(left: 60, bottom: 30, top: 20),
                padding: const EdgeInsets.only(left: 10),
                height: 30,
                width: 60,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: const Color(0xFF0E3C6E)),
                child: Row(
                  children: [
                    const Icon(
                      Icons.airline_seat_individual_suite,
                      color: Colors.white,
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 5),
                      child: const Text(
                        "4",
                        style: TextStyle(color: Colors.white),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 10, bottom: 30, top: 20),
                padding: const EdgeInsets.only(left: 10),
                height: 30,
                width: 60,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border:
                        Border.all(color: const Color(0xFF0E3C6E), width: 2),
                    color: Colors.white),
                child: Row(
                  children: [
                    const Icon(Icons.airline_seat_individual_suite),
                    Container(
                      margin: const EdgeInsets.only(left: 5),
                      child: const Text("3"),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 10, bottom: 30, top: 20),
                padding: const EdgeInsets.only(left: 10),
                height: 30,
                width: 60,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border:
                        Border.all(color: const Color(0xFF0E3C6E), width: 2),
                    color: Colors.white),
                child: Row(
                  children: [
                    const Icon(Icons.airline_seat_individual_suite),
                    Container(
                      margin: const EdgeInsets.only(left: 5),
                      child: const Text("2"),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 10, bottom: 30, top: 20),
                padding: const EdgeInsets.only(left: 10),
                height: 30,
                width: 60,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border:
                        Border.all(color: const Color(0xFF0E3C6E), width: 2),
                    color: Colors.white),
                child: Row(
                  children: [
                    const Icon(Icons.airline_seat_individual_suite),
                    Container(
                      margin: const EdgeInsets.only(left: 5),
                      child: const Text("1"),
                    ),
                  ],
                ),
              ),
            ],
          ),
          CarouselSlider.builder(
            itemCount: urlImages.length,
            itemBuilder: (context, index, realIndex) {
              final urlImage = urlImages[index];
              return buildImage(urlImage, index);
            },
            options: CarouselOptions(height: 180),
          ),
          Container(
            margin: const EdgeInsets.only(left: 165, top: 30),
            child: Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(right: 5),
                  height: 10,
                  width: 10,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle, color: Colors.grey),
                ),
                Container(
                  margin: const EdgeInsets.only(right: 5),
                  height: 10,
                  width: 10,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle, color: Colors.grey),
                ),
                Container(
                  margin: const EdgeInsets.only(right: 5),
                  height: 10,
                  width: 10,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle, color: Color(0xFF0E3C6E)),
                ),
                Container(
                  margin: const EdgeInsets.only(right: 5),
                  height: 10,
                  width: 10,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle, color: Colors.grey),
                ),
                Container(
                  margin: const EdgeInsets.only(right: 5),
                  height: 10,
                  width: 10,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle, color: Colors.grey),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 35, top: 16),
            child: Row(
              children: [
                const Text(
                  "GHJK Engineering Hostel",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 110),
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
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                      Icon(
                        Icons.star,
                        size: 16,
                        color: Colors.white,
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 31, top: 11),
            child: Row(
              children: [
                const Icon(
                  Icons.place,
                  size: 18,
                ),
                Container(
                  margin: const EdgeInsets.only(left: 5),
                  child: const Text(
                    "Lorem ipsum dolor sit amet, consectetur ",
                    style: TextStyle(fontSize: 12, color: Colors.black45),
                  ),
                )
              ],
            ),
          ),
          Container(
            width: size.width * 0.82046,
            margin: const EdgeInsets.only(left: 15, top: 13),
            child: const Text(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Neque accumsan, scelerisque eget lectus ullamcorper a placerat. Porta cras at pretium varius purus cursus. Morbi justo commodo habitant morbi quis pharetra posuere mauris. Morbi sit risus, diam amet volutpat quis. Nisl pellentesque nec facilisis ultrices.",
              style: TextStyle(fontSize: 12, color: Colors.black45),
            ),
          ),
          Container(
            width: size.width * 0.85046,
            margin: const EdgeInsets.only(left: 15, top: 35),
            child: const Text(
              "Facilities",
              style: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 31, top: 11),
            child: Row(
              children: [
                const Icon(
                  Icons.location_city,
                  size: 18,
                ),
                Container(
                  margin: const EdgeInsets.only(left: 5),
                  child: const Text(
                    "College in 400mtrs",
                    style: TextStyle(fontSize: 12, color: Colors.black),
                  ),
                )
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 31, top: 11, bottom: 20),
            child: Row(
              children: [
                const Icon(
                  Icons.hot_tub,
                  size: 18,
                ),
                Container(
                  margin: const EdgeInsets.only(left: 5),
                  child: const Text(
                    "Bathrooms : 2",
                    style: TextStyle(fontSize: 12, color: Colors.black),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Container AboutCollege(Size size) {
    return Container(
      child: Column(
        children: [
          Container(
              margin: const EdgeInsets.only(top: 30),
              width: size.width * 0.85280,
              child: const Text(
                "Description",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              )),
          Container(
            margin: const EdgeInsets.only(top: 16),
            width: size.width * 0.85280,
            child: const Text(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Neque accumsan, scelerisque eget lectus ullamcorper a placerat. Porta cras at pretium varius purus cursus. Morbi justo commodo habitant morbi quis pharetra posuere mauris. Morbi sit risus, diam amet volutpat quis. Nisl pellentesque nec facilisis ultrices.",
              style: TextStyle(fontSize: 14, color: Colors.black45),
            ),
          ),
          Container(
              margin: const EdgeInsets.only(top: 30),
              width: size.width * 0.85280,
              child: const Text(
                "Location",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              )),
          Container(
            margin: const EdgeInsets.only(top: 16),
            height: size.height * 0.19870,
            width: size.width * 0.85280,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: const DecorationImage(
                image: NetworkImage(
                    "https://miro.medium.com/max/1024/0*iRgiB6y8atMchG0o.jpg"),
                fit: BoxFit.fill,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 30),
            width: size.width * 0.85280,
            child: const Text(
              "Student Review",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 16),
            width: size.width * 0.85280,
            child: Row(
              children: [
                Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(right: 10),
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: const DecorationImage(
                          image: NetworkImage(
                              "https://images.unsplash.com/photo-1597223557154-721c1cecc4b0?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8aHVtYW4lMjBmYWNlfGVufDB8fDB8fA%3D%3D&w=1000&q=80"),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(right: 10),
                      child: const Icon(Icons.arrow_drop_up),
                    )
                  ],
                ),
                Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(right: 10),
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: const DecorationImage(
                          image: NetworkImage(
                              "https://images.unsplash.com/photo-1605462863863-10d9e47e15ee?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTZ8fGZhY2UlMjBtYW58ZW58MHx8MHx8&w=1000&q=80"),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(right: 10),
                      child: const Icon(
                        Icons.arrow_drop_up,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
                Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(right: 10),
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: const DecorationImage(
                          image: NetworkImage(
                              "https://i.pinimg.com/474x/30/bc/74/30bc74c40ec71c440c9c11202772edb9.jpg"),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(right: 10),
                      child: const Icon(
                        Icons.arrow_drop_up,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
                Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(right: 10),
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: const DecorationImage(
                          image: NetworkImage(
                              "https://images.pexels.com/photos/2379005/pexels-photo-2379005.jpeg?cs=srgb&dl=pexels-italo-melo-2379005.jpg&fm=jpg"),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(right: 10),
                      child: const Icon(
                        Icons.arrow_drop_up,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
                Column(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      margin: const EdgeInsets.only(right: 10),
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.black45,
                      ),
                      child: const Text(
                        "+15",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.white),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(right: 10),
                      child: const Icon(
                        Icons.arrow_drop_up,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.only(bottom: 10),
            height: size.height * 0.175,
            width: size.width * 0.85280,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.1),
                  spreadRadius: 5,
                  blurRadius: 20,
                  offset: const Offset(0, 3),
                ),
              ],
            ),
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 0),
                  width: size.width * 0.85280,
                  child: const Text(
                    "Arun sai",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 4),
                  width: size.width * 0.85280,
                  child: const Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nec sed lorem nunc varius rutrum eget dolor, quis. Nulla sit magna suscipit tellus malesuada in facilisis a.",
                    style: TextStyle(color: Colors.black45),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 7),
                  width: size.width * 0.85280,
                  child: Row(
                    children: const [
                      Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                      Icon(
                        Icons.star_half,
                        color: Colors.amber,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  GestureDetector newMethod(Size size, String text, int index) {
    return GestureDetector(
      onTap: () {
        setState(
          () {
            log(selectedindex.toString());
            selectedindex = index;
          },
        );
        log(index.toString());
      },
      child: Column(
        children: [
          Container(
            height: 40,
            width: size.width / 4,
            color: const Color(0xFFF8F8F8),
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 12),
                  child: Text(
                    text,
                    style: const TextStyle(
                        fontSize: 12, fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 8),
                  height: 2,
                  width: (size.width / 4) - 20,
                  color: index == selectedindex
                      ? const Color(0xFF0E3C6E)
                      : const Color(0xFFF8F8F8),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildImage(String urlImage, int index) => Container(
        child: Image.network(
          urlImage,
          fit: BoxFit.cover,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.grey,
        ),
      );
}
