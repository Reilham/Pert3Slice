import 'package:flutter/material.dart';
import 'package:pert3sclice/pages/loginpages.dart';
import 'package:google_fonts/google_fonts.dart';

class getstartedpage extends StatelessWidget {
  const getstartedpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("assets/img_started.png"))),
        ),
        Container(
          height: 444,
          width: double.infinity,
          decoration: BoxDecoration(
              gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.black.withOpacity(0.9),
              Colors.black.withOpacity(0.0),
            ],
          )),
        ),
        SafeArea(
            child: Column(
          children: [
            SizedBox(
              height: 80,
            ),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Treat",
                      style: GoogleFonts.poppins(
                        fontSize: 24,
                        color: Color(0xffFFFFFF),
                        fontWeight: FontWeight.w600,
                      )),
                  Text(" Patient",
                      style: GoogleFonts.poppins(
                        fontSize: 24,
                        color: Color(0xff308CF8),
                        fontWeight: FontWeight.w600,
                      )),
                  Text(" Like A",
                      style: GoogleFonts.poppins(
                        fontSize: 24,
                        color: Color(0xffFFFFFF),
                        fontWeight: FontWeight.w600,
                      )),
                  Text(" Quenn",
                      style: GoogleFonts.poppins(
                        fontSize: 24,
                        color: Color(0xff308CF8),
                        fontWeight: FontWeight.w600,
                      )),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Explore the best our services with\nprofessional specialist doctor",
              style: GoogleFonts.poppins(
                color: Color(0xffFFFFFF),
                fontSize: 16,
                fontWeight: FontWeight.w300,
              ),
              textAlign: TextAlign.center,
            ),
            Spacer(),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const loginpages()),
                );
              },
              child: Center(
                child: Container(
                  margin: EdgeInsets.only(bottom: 80),
                  padding: EdgeInsets.symmetric(horizontal: 58, vertical: 14),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(17)),
                  child: Text("Get Started",
                      style: GoogleFonts.poppins(
                        fontSize: 18,
                        color: Color(0xff0D2841),
                        fontWeight: FontWeight.w500,
                      )),
                ),
              ),
            ),
          ],
        ))
      ]),
    );
  }
}
