import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Parking(),
    );
  }
}

class Parking extends StatefulWidget {
  const Parking({super.key});

  @override
  State<Parking> createState() => _ParkingState();
}

class _ParkingState extends State<Parking> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            Container(
              height: 50,
              color: const Color.fromARGB(255, 255, 255, 255),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      alignment: Alignment.center,
                      height: 40,
                      width: 40,
                      color: const Color(0xffBC0063),
                      child: const Text(
                        "S",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.w700),
                      )),
                  const Text(
                    "My Parking",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .28,
                  ),
                  const Icon(
                    Icons.search,
                    size: 30,
                    color: Color(0xffCACACA),
                  )
                ],
              ),
            ),
            DefaultTabController(
              length: 3,
              child: Container(
                height: MediaQuery.of(context).size.height * .85,
                color: const Color.fromARGB(255, 255, 255, 255),
                width: MediaQuery.of(context).size.width * 1,
                child: Column(
                  children: [
                    TabBar(
                        indicatorSize: TabBarIndicatorSize.tab,
                        unselectedLabelColor: const Color(0xffBC0063),
                        indicatorColor: const Color.fromARGB(61, 34, 4, 46),
                        indicator: BoxDecoration(
                            color: const Color(0xffBC0063),
                            borderRadius: BorderRadius.circular(30)),
                        tabs: [
                          Tab(
                            child: Container(
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  border: Border.all(
                                    width: 2,
                                    color: const Color(0xffBC0063),
                                  )),
                              child: const Text("Ongoing"),
                            ),
                          ),
                          Tab(
                            child: Container(
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  border: Border.all(
                                    width: 2,
                                    color: const Color(0xffBC0063),
                                  )),
                              child: const Text("completed"),
                            ),
                          ),
                          Tab(
                            child: Container(
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  border: Border.all(
                                    width: 2,
                                    color: const Color(0xffBC0063),
                                  )),
                              child: const Text("cancelled"),
                            ),
                          )
                        ]),
                    const SizedBox(
                      height: 10,
                    ),
                    Expanded(
                      child: TabBarView(children: [
                        Container(
                          color: Colors.red,
                          height: 300,
                          width: MediaQuery.of(context).size.width,
                          child: Column(
                            children: [
                              Container(
                                margin: const EdgeInsets.all(20),
                                height: 222,
                                width: 358,
                                color: const Color.fromARGB(255, 199, 177, 177),
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Container(
                                          height: 100,
                                          width: 100,
                                          color: Colors.amberAccent,
                                        ),
                                        Container(
                                          margin: const EdgeInsets.all(10),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: const [
                                              Text("Allington Paddock"),
                                              Text('data')
                                            ],
                                          ),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          color: const Color.fromARGB(255, 111, 54, 244),
                          height: 300,
                          width: MediaQuery.of(context).size.width,
                        ),
                        Container(
                          color: const Color.fromARGB(255, 90, 180, 48),
                          height: 300,
                          width: MediaQuery.of(context).size.width,
                        ),
                      ]),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
