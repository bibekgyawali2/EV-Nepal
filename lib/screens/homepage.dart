import 'package:ev_nepal/models/models.dart';
import 'package:ev_nepal/screens/about.dart';
import 'package:ev_nepal/widgets/station_card.dart';
import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  void initState() {
    AdHelper.myBanner.load();
    super.initState();
  }

  final AdWidget adWidget = AdWidget(ad: AdHelper.myBanner);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.30,
                child: Stack(
                  children: [
                    Positioned(
                      top: 0,
                      left: 0,
                      right: 0,
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.2,
                        decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 112, 210, 255),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      left: 0,
                      right: 0,
                      child: Container(
                        margin: const EdgeInsets.all(20),
                        height: MediaQuery.of(context).size.height * 0.2,
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(20),
                          image: const DecorationImage(
                            image: AssetImage('ev.png'),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 5,
                      right: 15,
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const About(),
                            ),
                          );
                        },
                        child: const Icon(
                          (Icons.menu_outlined),
                          color: Colors.white,
                          size: 35,
                        ),
                      ),
                    ),
                    const Positioned(
                      top: 5,
                      left: 25,
                      child: Text(
                        "EV Nepal",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 30),
                      ),
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 12.0),
                child: Text(
                  "Charging Stations",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                child: ListView.builder(
                  physics: const ScrollPhysics(), // to disable list scrolling
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return StationCard(
                      name: charge[index].name,
                      location: charge[index].location,
                      phone: charge[index].phone,
                      lat: charge[index].lat,
                      long: charge[index].lang,
                    );
                  },
                  itemCount: charge.length,
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: 50,
        color: Colors.white,
        child: adWidget,
      ),
    );
  }
}

class AdHelper {
  static BannerAd myBanner = BannerAd(
    adUnitId: 'ca-app-pub-3383348262316846/1909875984',
    size: AdSize.banner,
    request: const AdRequest(),
    listener: const BannerAdListener(),
  );
}
