import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:uts/history.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:
          false, //menghilangkan tulisan debug pada pojok kanan atas
      title: 'LinkAja',
      home: const MyHomePage(),
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.transparent,
        ),
      ),
    );
  }
}

//Gambar Slider
final List<String> imgList = [
  'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
  'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
  'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
  'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
  'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
  'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'
];

final List<Widget> imageSliders = imgList
    .map((item) => Container(
          margin: const EdgeInsets.all(5.0),
          child: ClipRRect(
            borderRadius: const BorderRadius.all(Radius.circular(5.0)),
            child: Image.network(item, fit: BoxFit.cover, width: 1000.0),
          ),
        ))
    .toList();

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: ListView(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  'assets/images/petaInd.png',
                ),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 5),
                      child: Image.asset(
                        'assets/images/linkaja.png',
                        height: 40,
                      ),
                    ),
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.all(8.0),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          child: IconButton(
                            color: Colors.black,
                            icon: Icon(Icons.discount_outlined),
                            onPressed: () {
                              // Tindakan saat tombol notifikasi ditekan
                            },
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(8.0),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          child: IconButton(
                            color: Colors.black,
                            icon: Icon(Icons.thumbs_up_down_outlined),
                            onPressed: () {
                              // Tindakan saat tombol notifikasi ditekan
                            },
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Container(
                  height: 170,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Color.fromARGB(255, 255, 0, 0),
                    //Untuk Gradasi Color
                    // gradient: const LinearGradient(
                    //   colors: [
                    //     Color(0xFFE52D27),
                    //     Color(0xFFE52D27),
                    //     // Color.fromARGB(255, 255, 0, 8),
                    //   ],
                    // ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        offset: Offset(0, 2),
                        blurRadius: 4,
                        spreadRadius: 0,
                      ),
                    ],
                  ),
                  margin: const EdgeInsets.all(10),
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: const EdgeInsets.all(10),
                          child: const Text(
                            'Hi, SOFYAN NOOR ARIEF,S.ST, M.KOM',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Row(
                          children: [
                            BoxWhite(
                              title: "Your Balance",
                              balance: "Rp. 10.000",
                            ),
                            BoxWhite(
                              title: "Bonus Balance",
                              balance: "Rp.0",
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),

          //ICON
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  offset: Offset(0, 2),
                  blurRadius: 4,
                  spreadRadius: 0,
                )
              ],
            ),
            margin: const EdgeInsets.all(10),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  WidgetList(
                    iconData: Icons.add_card_outlined,
                    name: "Topup",
                  ),
                  WidgetList(
                    iconData: Icons.money,
                    name: "Send Money",
                  ),
                  WidgetList(
                    iconData: Icons.airplane_ticket_outlined,
                    name: "Ticket Code",
                  ),
                  WidgetList(
                    iconData: Icons.border_all_rounded,
                    name: "See All",
                  ),
                ]),
          ),
          //ICON Lainnya
          //Container 1
          Container(
            margin: const EdgeInsets.all(10),
            child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  WidgetList(
                    iconData: Icons.signal_cellular_alt,
                    name: "Pulsa/Data",
                  ),
                  WidgetList(
                    iconData: Icons.electric_bolt,
                    name: "Electricity",
                  ),
                  WidgetList(
                    iconData: Icons.library_books_outlined,
                    name: "BPJS",
                  ),
                  WidgetList(
                    iconData: Icons.gamepad_outlined,
                    name: "mgames",
                  ),
                ]),
          ),
          //Container 2
          Container(
            margin: const EdgeInsets.all(10),
            child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  WidgetList(
                    iconData: Icons.wifi,
                    name: "Cable TV\n& Internet",
                  ),
                  WidgetList(
                    iconData: Icons.water_drop_outlined,
                    name: "PDAM",
                  ),
                  WidgetList(
                    iconData: Icons.credit_card_outlined,
                    name: "Kartu Uang Elektronik",
                  ),
                  WidgetList(
                    iconData: Icons.list,
                    name: "More",
                  ),
                ]),
          ),
          //////////////////////
          Container(
            margin: EdgeInsets.all(10),
            child: CarouselSlider(
              options: CarouselOptions(
                height: 150.0,
                enlargeCenterPage: true,
                autoPlay: true,
                enlargeFactor: 0.2,
              ),
              items: imageSliders,
            ),
          ),
        ],
      ),
      //Bottom Navigasi
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.red,
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        child: const Icon(Icons.qr_code_2_outlined),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          mainAxisSize: MainAxisSize.max,
          children: [
            NavIcon(
              iconData: Icons.home_outlined,
              name: "Home",
              onTap: () {
                // setState(() {
                //   currentIndex = 0;
                //   pageController.animateToPage(
                //     0,
                //     duration: const Duration(milliseconds: 1000),
                //     curve: Curves.ease,
                //   );
                // });
              },
            ),
            NavIcon(
              iconData: Icons.history,
              name: "History",
              onTap: () {
                Navigator.of(context).push(
                  PageRouteBuilder(
                    transitionDuration:
                        const Duration(milliseconds: 500), // Durasi animasi
                    pageBuilder: (context, animation, secondaryAnimation) =>
                        History(),
                    transitionsBuilder:
                        (context, animation, secondaryAnimation, child) {
                      const begin = Offset(1.0, 0.0); // Awal animasi
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
    );
  }
}

//CLASS BoxWhite
class BoxWhite extends StatelessWidget {
  final String title;
  final String balance;

  const BoxWhite({
    super.key,
    required this.title,
    required this.balance,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      height: 90,
      width: 140,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.redAccent,
            offset: Offset(0, 2),
            blurRadius: 4,
            spreadRadius: 0,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 10),
            child: Text(
              title,
            ),
          ),
          Row(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 10, left: 10),
                child: Text(
                  balance,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                width: 30,
                height: 30,
                alignment: Alignment.center,
                margin: const EdgeInsets.only(top: 10, left: 10),
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: IconButton(
                  icon: Icon(
                    Icons.arrow_right,
                    color: Colors.white,
                    size: 12,
                  ),
                  onPressed: () {
                    // Tindakan saat tombol notifikasi ditekan
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

//CLASS WidgetList
class WidgetList extends StatelessWidget {
  final IconData iconData;
  final String name;
  const WidgetList({
    super.key,
    required this.iconData,
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 90,
      width: 75,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          IconButton(
            icon: Icon(
              iconData,
              color: Colors.black,
              shadows: [
                Shadow(
                  color: Colors.grey,
                  offset: Offset(0, 2),
                  blurRadius: 4,
                ),
              ],
            ),
            onPressed: () {
              // Tindakan saat tombol ditekan
            },
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: Text(
              name,
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}

//CLASS NAVBAR
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
