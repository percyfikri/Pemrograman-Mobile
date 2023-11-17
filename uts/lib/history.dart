import 'package:flutter/material.dart';

import '../main.dart';

class History extends StatelessWidget {
  const History({super.key});
  
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.grey[300],
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: const Center(
            child: Text('Transaction History'),
          ),
          automaticallyImplyLeading: false, // Menonaktifkan tanda panah kembali
          bottom: const TabBar(
            indicatorSize: TabBarIndicatorSize.tab,
            tabs: [
              Tab(
                text: 'Pending',
              ),
              Tab(
                text: 'Done',
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/trx.png',
                    width: 300,
                    height: 300,
                  ),
                  Container(
                    margin: EdgeInsets.all(5),
                    child: Text(
                      "Pending Transactions",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(5),
                    child: Text(
                      "Any pending transaction will appear in this page",
                      style: TextStyle(
                        color: Colors.blueGrey,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/trx.png',
                    width: 300,
                    height: 300,
                  ),
                  Container(
                    margin: EdgeInsets.all(5),
                    child: Text(
                      "Oops, no transaction yet!",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(5),
                    child: Text(
                      "Come on, make transactions using LinkAja and enjoy attractive promo!",
                      style: TextStyle(
                        color: Colors.blueGrey,
                      ),
                      textAlign:
                          TextAlign.center, // Menambahkan properti textAlign
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: Colors.red,
          foregroundColor: Colors.white,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          child: const Icon(Icons.qr_code_2_outlined),
        ),
        bottomNavigationBar: BottomAppBar(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            mainAxisSize: MainAxisSize.max,
            children: [
              NavIcon(
                iconData: Icons.home,
                name: "Home",
                onTap: () {
                  Navigator.of(context).push(
                    PageRouteBuilder(
                      transitionDuration:
                          const Duration(milliseconds: 500), // Durasi animasi
                      pageBuilder: (context, animation, secondaryAnimation) =>
                          MyHomePage(),
                      transitionsBuilder:
                          (context, animation, secondaryAnimation, child) {
                        const begin = Offset(-1.0, 0.0); // Awal animasi
                        const end = Offset.zero; // Akhir animasi
                        const curve = Curves.ease; // Kurva animasi

                        var tween = Tween(begin: begin, end: end)
                            .chain(CurveTween(curve: curve));
                        var offsetAnimation = animation.drive(tween);

                        return SlideTransition(
                            position: offsetAnimation, child: child);
                      },
                    ),
                  );
                },
              ),
              NavIcon(
                iconData: Icons.history,
                name: "History",
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => History(),
                    ),
                  );
                },
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 25),
                      child: Text(
                        "Pay",
                        style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              NavIcon(
                iconData: Icons.inbox_outlined,
                name: "Inbox",
              ),
              NavIcon(
                iconData: Icons.account_circle_outlined,
                name: "Account",
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class NavIcon extends StatelessWidget {
  final IconData iconData;
  final String name;
  final void Function()? onTap;

  const NavIcon({
    super.key,
    required this.iconData,
    required this.name,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: InkWell(
        borderRadius: BorderRadius.circular(30),
        onTap: onTap,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              iconData,
              color: Colors.grey,
            ),
            Text(
              name,
              style: const TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
