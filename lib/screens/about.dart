import 'package:ev_nepal/screens/contact_us.dart';
import 'package:flutter/material.dart';

class About extends StatefulWidget {
  const About({Key? key}) : super(key: key);

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.35,
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.25,
                    color: Colors.lightBlue,
                  ),
                  Positioned(
                    left: MediaQuery.of(context).size.width * 0.4,
                    bottom: MediaQuery.of(context).size.height * 0.0,
                    child: SizedBox(
                      height: MediaQuery.of(context).size.height * 0.2,
                      child: Image.asset(
                        "icon.png",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(18.0),
                    child: Text(
                      "About Us",
                      style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                    "Hello, EV Nepal is a group  which is trying to promote electric vehicles in Nepal. The motive of this app is to make the life of people easy by helping them easily navigate around Electric charging stations.\n\nIn this App we have gathered most used charger across the country.If you think you can contribute to this project by providing info about Charging station, please contact us Using Contact Fourm in the next Screen.\n\nFor the deletion of charging station from our app please contact us using Contact Form in the next Screen.\n\nFor any other query please contact us using Contact Form in the next Screen.\n\nThank you for using this app."),
              ),
              InkWell(
                child: const Text(
                  "Contact Us",
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ContactUs(),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
