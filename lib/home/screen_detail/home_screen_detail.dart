import 'package:bank_celengan/home/screen_detail/biller_screen_detail.dart';
import 'package:flutter/material.dart';

class HomeScreenDetail extends StatelessWidget {
  const HomeScreenDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Row(
          children: [
            Icon(
              Icons.home_work,
              color: Colors.white,
            ),
            SizedBox(
              width: 15,
            ),
            Text(
              "Bank Celengan",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ],
        ),
        backgroundColor: const Color.fromARGB(255, 5, 54, 94),
      ),
      body: ListView(
        children: [
          Card(
            elevation: 20,
            color: const Color.fromARGB(255, 25, 101, 163),
            child: SizedBox(
              height: MediaQuery.of(context).size.height * 0.3,
              width: MediaQuery.of(context).size.width * 0.7,
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
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
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
                          const Text(
                            "Transfer",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ],
                      ),
                      Column(
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
                                Icons.view_comfortable_rounded,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          const Text(
                            "VA",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ],
                      ),
                      Column(
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
                              onPressed: () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (_) {
                                  return BillerScreenDetail();
                                }));
                              },
                              icon: const Icon(
                                Icons.attach_money,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          const Text(
                            "Biller",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ],
                      ),
                      Column(
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
                                Icons.wallet,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          const Text(
                            "E-Wallet",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
