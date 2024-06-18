import 'package:flutter/material.dart';

class MutasiScreenDetail extends StatelessWidget {
  const MutasiScreenDetail({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> list = [
      "PLN",
      "PDAM",
      "TOKOPEDIA",
      "SHOPEE",
    ];
    List<String> purpose = [
      "Pembayaran via VA",
      "Pembayaran via VA",
      "Pembayaran via VA",
      "Pembayaran via VA",
    ];

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Mutasi",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 5, 54, 94),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          const Row(
            children: [
              Flexible(
                child: Card(
                  elevation: 20,
                  child: SizedBox(
                    height: 70, // Set height for equal height cards
                    child: ListTile(
                      title: Text(
                        "Sumber Rekening",
                        style: TextStyle(fontSize: 10, color: Colors.black),
                      ),
                      subtitle: Text(
                        "0410 0200 4203 023",
                        style: TextStyle(fontSize: 15, color: Colors.black),
                      ),
                      trailing: Icon(
                        Icons.arrow_drop_down,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ),
              Flexible(
                child: Card(
                  elevation: 20,
                  child: SizedBox(
                    height: 70,
                    child: Center(
                      child: ListTile(
                        leading:
                            Icon(Icons.timelapse_sharp, color: Colors.black),
                        title: Text(
                          "Rentang Waktu",
                          style: TextStyle(fontSize: 15, color: Colors.black),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Expanded(
            child: ListView.builder(
              itemCount: list.length, // Set itemCount sesuai panjang daftar
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(list[index]),
                  subtitle: Text(purpose[index]),
                  trailing: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      const Text("- Rp. 1.000.000,00"),
                      Text(
                          "${DateTime.now().day}-${DateTime.now().month}-${DateTime.now().year}"),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
