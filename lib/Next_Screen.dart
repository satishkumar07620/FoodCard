// ignore_for_file: prefer_const_constructors, camel_case_types, file_names, avoid_unnecessary_containers, sized_box_for_whitespace, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class Next_Screen extends StatefulWidget {
  const Next_Screen({super.key});

  @override
  State<Next_Screen> createState() => _Next_ScreenState();
}

class _Next_ScreenState extends State<Next_Screen> {
  List<model1> list = [
    model1(
      image: "assets/mx1.png",
      title: "Session 01",
    ),
    model1(
      image: "assets/mx1.png",
      title: "Session 02",
    ),
    model1(
      image: "assets/mx1.png",
      title: "Session 03",
    ),
    model1(
      image: "assets/mx1.png",
      title: "Session 04",
    ),
    model1(
      image: "assets/mx1.png",
      title: "Session 05",
    ),
    model1(
      image: "assets/mx.jpg",
      title: "Session 06",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        fixedColor: Colors.black,
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.calendar_month,
              color: Colors.black54,
              size: 30,
            ),
            label: 'Today',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.fitness_center,
              color: Colors.red,
              size: 30,
            ),
            label: 'All Exercises',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.settings,
              size: 30,
            ),
            label: 'Settings',
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.43,
              color: Color(0xFFbeb3f5),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.05,
              width: MediaQuery.of(context).size.width * 0.05,
              margin: EdgeInsets.only(top: 45, left: 370),
              child: Icon(
                Icons.location_on,
                color: Color(0xFF9e84e6),
                size: 25,
              ),
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 80,
                ),
                Container(
                  margin: EdgeInsets.only(left: 20),
                  child: Text(
                    "Meditation",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  margin: EdgeInsets.only(left: 20),
                  child: Text(
                    '3-10 MIN Course',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 20),
                          child: Text(
                            'Live happier and healthier by learning the',
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 20),
                          child: Text('fundamentals of meditation and'),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 20),
                          child: Text('mindfullness'),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 18, top: 20),
                          height: MediaQuery.of(context).size.height * 0.06,
                          width: MediaQuery.of(context).size.width * 0.5,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Row(
                            children: [
                              SizedBox(
                                width: 20,
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.search,
                                  color: Colors.black38,
                                  size: 30,
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                'Search',
                                style: TextStyle(color: Colors.black38),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.16,
                      width: MediaQuery.of(context).size.width * 0.33,
                      child: Image(
                        image: AssetImage(
                          "assets/imgb.png",
                        ),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ],
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.40,
                  child: GridView.builder(
                    itemCount: list.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      childAspectRatio: MediaQuery.of(context).size.height /
                          (MediaQuery.of(context).size.width / 0.99),
                      crossAxisCount: 2,
                    ),
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        padding: EdgeInsets.all(5),
                        margin: EdgeInsets.all(5),
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          elevation: 10,
                          child: Row(
                            children: [
                              Container(
                                margin: EdgeInsets.all(10),
                                child: Image(
                                  image: AssetImage(list[index].image!),
                                  height: 50,
                                  width: 50,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Text(
                                list[index].title!,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: Color.fromARGB(255, 93, 95, 101),
                                ),
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(
                        left: 20,
                      ),
                      child: Text(
                        'Meditation',
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.black87,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(20),
                      height: MediaQuery.of(context).size.height * 0.09,
                      width: MediaQuery.of(context).size.width * 0.9,
                      child: Card(
                        elevation: 10,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image(
                              image: AssetImage("assets/bug.png"),
                              height: 50,
                              width: 50,
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                SizedBox(
                                  height: 10,
                                ),
                                Text('Basics 2'),
                                SizedBox(
                                  height: 10,
                                ),
                                Text('start your deepend you practice'),
                              ],
                            ),
                            SizedBox(
                              width: 50,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 25.0),
                              child: Icon(
                                Icons.lock,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    //   ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class model1 {
  String? image;
  String? title;
  model1({
    required this.image,
    required this.title,
  });
}
