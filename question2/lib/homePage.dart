import 'package:flutter/material.dart';

class homePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _homePageState();
  }
}

bool isReadMore = false;

class _homePageState extends State<homePage> {
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Color.fromARGB(255, 40, 141, 100),
            title: const Text(
              "question 2",
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
            )),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 350,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Color.fromARGB(201, 3, 3, 3),
                borderRadius: BorderRadius.circular(50.0),
              ),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const SizedBox(
                          width: 10,
                        ),
                        Container(
                          width: 60,
                          height: 60,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Container(
                              height: 40,
                              width: 40,
                              alignment: Alignment.center,
                              decoration: const BoxDecoration(
                                color: Colors.black,
                                shape: BoxShape.circle,
                              ),
                              child: const Icon(
                                Icons.apple,
                                color: Colors.white,
                              )),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        const Column(
                          children: [
                            Text("Analytic Data",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                  color: Colors.white,
                                ),
                                textAlign: TextAlign.left),
                            Text("Apple Offer          ",
                                style: TextStyle(
                                    fontSize: 12, color: Colors.white),
                                textAlign: TextAlign.left)
                          ],
                        ),
                        const SizedBox(
                          width: 150,
                        ),
                        Container(
                          height: 40,
                          child: const Icon(
                            Icons.bookmark,
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          width: 10,
                        ),
                        Container(
                          height: 25,
                          width: 90,
                          decoration: BoxDecoration(
                            color: Color.fromARGB(80, 0, 0, 0),
                            borderRadius: BorderRadius.circular(50.0),
                          ),
                          child: const Center(
                            child: Text(
                              "Full Time",
                              style:
                                  TextStyle(fontSize: 14, color: Colors.white),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        Container(
                          height: 25,
                          width: 90,
                          decoration: BoxDecoration(
                            color: Color.fromARGB(80, 0, 0, 0),
                            borderRadius: BorderRadius.circular(50.0),
                          ),
                          child: const Center(
                            child: Text(
                              "Offline",
                              style:
                                  TextStyle(fontSize: 14, color: Colors.white),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        Container(
                          height: 25,
                          width: 100,
                          decoration: BoxDecoration(
                            color: Color.fromARGB(80, 0, 0, 0),
                            borderRadius: BorderRadius.circular(50.0),
                          ),
                          child: const Center(
                            child: Text(
                              "1 Year Exp",
                              style:
                                  TextStyle(fontSize: 14, color: Colors.white),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const SizedBox(
                          width: 10,
                        ),
                        Container(
                          width: 350,
                          child: const Text(
                            "Discover how you can make an impact: see out areas of work, world wide locations and opportunities for students ",
                            style: TextStyle(fontSize: 14, color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const Text(
                          "\$250/Month",
                          style: TextStyle(
                              fontSize: 19,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          height: 50,
                          child: Row(
                            children: [
                              const SizedBox(
                                width: 10,
                              ),
                              const Text(
                                "1 Week Ago  ",
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                              Container(
                                  decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(20.0),
                                  ),
                                  child: const Icon(
                                    Icons.arrow_right_alt,
                                    color: Colors.white,
                                  )),
                              const SizedBox(
                                width: 15,
                              ),
                            ],
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
