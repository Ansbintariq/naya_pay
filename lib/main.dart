import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:naya_pay/my_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Naya Pay',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.3,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                Icon(Icons.person),
                Icon(Icons.notifications),
                Icon(Icons.headphones),
              ],
            ),
          )
        ],
        title: const Text("Naya Pay"),
        backgroundColor: Colors.orange[800],
        elevation: 0,
      ),
      bottomNavigationBar: BottomNavigationBar(
          showUnselectedLabels: true,
          unselectedItemColor: Colors.black,
          selectedItemColor: Colors.orange[800],
          currentIndex: selectedIndex,
          onTap: (value) {
            setState(() {
              selectedIndex = value;
            });
          },
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.chat), label: "Chat"),
            BottomNavigationBarItem(
                icon: Icon(Icons.card_membership), label: "Card"),
            BottomNavigationBarItem(icon: Icon(Icons.chat), label: "Chat"),
          ]),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  CircleAvatar(
                    backgroundColor: Colors.amber,
                    radius: 37.0,
                  ),
                  Text("Muhammad Ans Tariq"),
                  Text("ansbintariq@gmail.com")
                ],
              ),
            ),
            Column(
              children: const [
                ListTile(
                  leading: Icon(Icons.warning_rounded),
                  title: Text("Dispute Center"),
                ),
                ListTile(
                  leading: Icon(Icons.settings),
                  title: Text("Settings"),
                ),
                ListTile(
                  leading: Icon(Icons.feedback),
                  title: Text("Give us feedback"),
                ),
                ListTile(
                  leading: Icon(Icons.help_center),
                  title: Text("Help"),
                ),
                ListTile(
                  leading: Icon(Icons.logout),
                  title: Text("LogOut"),
                ),
              ],
            )
          ],
        ),
      ),
      body: Column(
        children: [
          Stack(
            children: [
              // Expanded(
              //   flex: 3,
              //   child: Container(
              //     height: 70,
              //     color: Colors.amber,
              //   ),
              // ),
              Container(
                height: 120,
                width: MediaQuery.of(context).size.width,
                color: Colors.orange[800],
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: Container(
                  height: 230,
                  width: MediaQuery.of(context).size.width * 1,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset:
                            const Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text("My Wallet", style: TextStyle(fontSize: 18)),
                            Icon(Icons.menu_sharp),
                          ],
                        ),
                        Row(
                          children: const [
                            Text("Rs 9888739.00",
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black)),
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Icon(Icons.visibility_off),
                            ),
                          ],
                        ),
                        Row(
                          children: const [
                            Icon(Icons.refresh),
                            Text("Last update moments ago"),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 50,
                              width: MediaQuery.of(context).size.width * .4,
                              decoration: BoxDecoration(
                                  color: Colors.orange[800],
                                  borderRadius: BorderRadius.circular(5)),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: const [
                                  Icon(
                                    Icons.add,
                                    color: Colors.white,
                                    size: 20,
                                  ),
                                  Text(
                                    "ADD MONEY",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              height: 50,
                              width: MediaQuery.of(context).size.width * .4,
                              decoration: BoxDecoration(
                                  color: Colors.orange[800],
                                  borderRadius: BorderRadius.circular(5)),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: const [
                                  Icon(
                                    Icons.arrow_forward,
                                    color: Colors.white,
                                    size: 20,
                                  ),
                                  Text(
                                    "SEND MONEY",
                                    style: TextStyle(color: Colors.white),
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
            ],
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                child: Container(
                  height: 140,
                  width: MediaQuery.of(context).size.width * 1,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: const Color.fromARGB(255, 232, 232, 232),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.7),

                        blurRadius: 7,
                        offset:
                            const Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text("Find Your Friends",
                                style: TextStyle(
                                    color: Color.fromARGB(255, 214, 106, 17),
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold)),
                            Text('sync your phonebook to let your'),
                            Text("contacts know you're on NayaPay")
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: const [
                            Icon(
                              FontAwesomeIcons.addressBook,
                              size: 60,
                              color: Color.fromARGB(255, 216, 113, 16),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        MyBox(
                          txt: "Quick Pay",
                          icon: FontAwesomeIcons.qrcode,
                        ),
                        MyBox(
                          txt: 'Pay Contact',
                          icon: FontAwesomeIcons.addressBook,
                        ),
                        MyBox(
                          txt: "Discovord ",
                          icon: FontAwesomeIcons.houseCrack,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        MyBox(
                          txt: "Quick Pay",
                          icon: FontAwesomeIcons.moneyBill,
                        ),
                        MyBox(
                          txt: 'Pay Contact',
                          icon: FontAwesomeIcons.addressBook,
                        ),
                        MyBox(
                          txt: "Discovord ",
                          icon: FontAwesomeIcons.chartPie,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        MyBox(
                          txt: "gift ",
                          icon: FontAwesomeIcons.gift,
                        ),
                        MyBox(
                          txt: 'Pay Contact',
                          icon: FontAwesomeIcons.figma,
                        ),
                        MyBox(
                          txt: "Discovord ",
                          icon: FontAwesomeIcons.mobile,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        MyBox(
                          txt: "gift ",
                          icon: FontAwesomeIcons.book,
                        ),
                        MyBox(
                          txt: 'Pay Contact',
                          icon: FontAwesomeIcons.networkWired,
                        ),
                        MyBox(
                          txt: "Discovord ",
                          icon: FontAwesomeIcons.mobileButton,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
