import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Card Example')),
        body: Center(
          child: LayoutBuilder(
            builder: (context, constraints) {
              return Container(
                width: constraints.maxWidth * 0.6,
                child: Card(
                  color: const Color.fromARGB(255, 25, 101, 163),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 20.0),
                        child: Text(
                          "Saldo Rekening Kamu",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 15,
                              color: Colors.white),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 20.0),
                        child: Text(
                          "Rp. 1.500.000,00",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 25,
                              color: Colors.white),
                        ),
                      ),
                      const Divider(
                        indent: 20,
                        endIndent: 20,
                        color: Colors.white,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 5, 54, 94),
                              border: Border.all(
                                  color: const Color.fromARGB(255, 5, 54, 94)),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: IconButton(
                              color: Colors.black,
                              onPressed: () {},
                              icon: const Icon(
                                Icons.transfer_within_a_station,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 5, 54, 94),
                              border: Border.all(
                                  color: const Color.fromARGB(255, 5, 54, 94)),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: IconButton(
                              color: Colors.black,
                              onPressed: () {},
                              icon: const Icon(
                                Icons.view_comfortable_rounded,
                                color: Colors.white,
                              ),
                              selectedIcon: const Text("VA"),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 5, 54, 94),
                              border: Border.all(
                                  color: const Color.fromARGB(255, 5, 54, 94)),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: IconButton(
                              color: Colors.black,
                              onPressed: () {},
                              icon: const Icon(
                                Icons.wallet,
                                color: Colors.white,
                              ),
                              selectedIcon: const Text("E-Wallet"),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 5, 54, 94),
                              border: Border.all(
                                  color: const Color.fromARGB(255, 5, 54, 94)),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: IconButton(
                              color: Colors.black,
                              onPressed: () {},
                              icon: const Icon(
                                Icons.smartphone,
                                color: Colors.white,
                              ),
                              selectedIcon: const Text("Pulsa"),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
