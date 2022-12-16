import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          scaffoldBackgroundColor: Colors.black,
          colorScheme: const ColorScheme.dark()),
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);
  static const Color mainColor = Color(0xffCFCFCF);
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Color(0xffE4B2B1),
          ),
        ),
        centerTitle: true,
        title: const Text(
          "Chiang Mai",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.ios_share),
            color: const Color(0xffE4B2B1),
          ),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.favorite_outline,
                color: Color(0xffffffff),
              )),
        ],
        backgroundColor: const Color(0xff1A1C1B),
      ),
      body: ListView(
        children: [
          //* image
          Container(
            margin: const EdgeInsets.only(top: 8.0, bottom: 10.0),
            width: width,
            height: height / 4,
            color: Colors.blue,
            child: Image.asset(
              "assets/images/hotel.jpg",
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //* Header
                Header(color: mainColor, width: width),
                SizedBox(
                  height: height / 20,
                ),
                //* detail
                const Reviews(color: mainColor),
                SizedBox(
                  height: height / 30,
                ),
                //* popular
                const Padding(
                  padding: EdgeInsets.only(top: 8.0, bottom: 8.0),
                  child: Text("Popular amenities",
                      style:
                          TextStyle(fontWeight: FontWeight.w800, fontSize: 20)),
                ),
                Table(
                  children: const [
                    TableRow(children: [
                      DetailText(
                        icon: Icons.wifi,
                        text: "Free WiFi",
                        color: mainColor,
                      ),
                      DetailText(
                        icon: Icons.pool,
                        text: "Pool",
                        color: mainColor,
                      ),
                    ]),
                    TableRow(children: [
                      DetailText(
                        icon: Icons.ac_unit,
                        text: "Air conditioning",
                        color: mainColor,
                      ),
                      DetailText(
                        icon: Icons.drive_eta,
                        text: "Free parking",
                        color: mainColor,
                      ),
                    ]),
                    TableRow(children: [
                      DetailText(
                        icon: Icons.fitness_center,
                        text: "Gym",
                        color: mainColor,
                      ),
                      DetailText(
                        icon: Icons.thermostat,
                        text: "Refrigerator",
                        color: mainColor,
                      ),
                    ]),
                  ],
                ),
                //*image
                Container(
                  margin: const EdgeInsets.only(top: 8.0, bottom: 10.0),
                  width: width,
                  height: height / 5,
                  color: Colors.blue,
                  child: Image.asset(
                    "assets/images/map.jpg",
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
          backgroundColor: const Color(0xffAFCDF1),
          elevation: 8.0,
          onPressed: () {},
          label: SizedBox(
            width: width * 0.87,
            child: const Text(
              "Select a room",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w900),
            ),
          )),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}

class Header extends StatelessWidget {
  const Header({Key? key, required this.color, required this.width})
      : super(key: key);
  final Color color;
  final double width;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "UNESCO Sustainable Travel Pledge",
          style: TextStyle(color: Color(0xffBDBDBD), fontSize: 12),
        ),
        const Padding(
          padding: EdgeInsets.only(top: 8.0),
          child: Text(
            "Shangri-La Chiang Mai",
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 26),
          ),
        ),
        const RatingStar(),
        Text(
          "Luxury hotel with free water park, near Chiang Mai Night Bazaar",
          style: TextStyle(
              fontWeight: FontWeight.w400, fontSize: 18, color: color),
        ),
      ],
    );
  }
}

class Reviews extends StatelessWidget {
  const Reviews({Key? key, required this.color}) : super(key: key);
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "9.0/10 Superb",
          style: TextStyle(fontWeight: FontWeight.w800, fontSize: 20),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 12.0, bottom: 8.0),
          child: Text("1,000 verified Hotels.com guest reviews",
              style: TextStyle(color: color, fontSize: 14)),
        ),
        InkWell(
            onTap: () {},
            child: const Text(
              "See all 1,000 reviews   >",
              style: TextStyle(color: Color(0xffAFCDF1), fontSize: 14),
            )),
      ],
    );
  }
}

class DetailText extends StatelessWidget {
  const DetailText(
      {Key? key, required this.icon, required this.text, required this.color})
      : super(key: key);
  final IconData icon;
  final String text;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              icon,
              color: color,
            )),
        Text(
          text,
          style: TextStyle(fontSize: 16, color: color),
        )
      ],
    );
  }
}

class RatingStar extends StatelessWidget {
  const RatingStar({
    Key? key,
  }) : super(key: key);

  static const Color mainColor = Color(0xff8B8B8B);
  static const size = 16.0;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        Icon(
          Icons.star,
          color: mainColor,
          size: size,
        ),
        Icon(
          Icons.star,
          color: mainColor,
          size: size,
        ),
        Icon(
          Icons.star,
          color: mainColor,
          size: size,
        ),
        Icon(
          Icons.star,
          color: mainColor,
          size: size,
        ),
        Icon(
          Icons.star,
          color: mainColor,
          size: size,
        ),
      ],
    );
  }
}
