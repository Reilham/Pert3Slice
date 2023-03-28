import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pert3sclice/sign.up.pages.dart';
import 'package:pert3sclice/mainmenu.dart';

class loginpages extends StatelessWidget {
  const loginpages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/img_Login.jpg"))),
          ),
          Positioned(
              child: Column(
            children: [
              Spacer(),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const MainMenuPage()),
                  );
                },
                child: Center(
                  child: Container(
                    margin: EdgeInsets.only(bottom: 40),
                    padding: EdgeInsets.symmetric(horizontal: 58, vertical: 14),
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(17)),
                    child: Text("Login",
                        style: GoogleFonts.poppins(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                        )),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const signuppages()),
                  );
                },
                child: Center(
                  child: Container(
                    margin: EdgeInsets.only(bottom: 80),
                    padding: EdgeInsets.symmetric(horizontal: 58, vertical: 14),
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(17)),
                    child: Text("Sign Up",
                        style: GoogleFonts.poppins(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                        )),
                  ),
                ),
              ),
            ],
          ))
        ],
      ),
    );
  }
}
