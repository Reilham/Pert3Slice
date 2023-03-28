import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MainMenuPage extends StatelessWidget {
  const MainMenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget doctorcard (String img,String name,String role){
      return Container(
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.only(bottom: 16),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(17),
                 color: Color(0xffFFFFFF)),
                 child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  SizedBox(height: 24,),
                  Container(
                    height: 220,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(17),
              image: DecorationImage(
                fit: BoxFit.cover,
              image: AssetImage(
                img
                //"assets/img_doc 2.png"
                        )))
                        ),
                        SizedBox(height: 10,),
                        Container(
                        margin: EdgeInsets.symmetric(horizontal: 16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column( 
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(name,
                            style: GoogleFonts.poppins(
                              fontSize:18,
                              color: Color(0xff0D2841),
                              fontWeight: FontWeight.w500,
                            )),
                            Text(role,
                            style: GoogleFonts.poppins(
                              fontSize:18,
                              color: Color.fromARGB(255, 198, 198, 199),
                              fontWeight: FontWeight.w500,
                            )),
                              ],
                            ),
                            Row(
                              children: [
                                Container(
        width: 24,
        height: 24,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
          image: AssetImage(
            "assets/Star 1.png"
               )
              )
            ),
          ),
          Text("4.8",
                style: GoogleFonts.poppins(
                  fontSize:16,
                  color: Color(0xff308CF8),
                  fontWeight: FontWeight.w500,
                  )),
                              ],
                            ),
                          ],
                        ),
                        ),
                 ],),  
           );
    }

    return Scaffold(
      backgroundColor: Color(0xffFAFAFA),
    body: SafeArea(
      child: SingleChildScrollView(
      child: Container(
        margin: EdgeInsets.symmetric(horizontal:24),
        child: Column(children: [
          SizedBox(height: 30,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Hello\nalvitoadty",
                              style: GoogleFonts.poppins(
                                fontSize:24,
                                color: Color(0xff0D2841),
                                fontWeight: FontWeight.w500,
                              ),
                           ),
                           SizedBox(
                            height: 6,
                           ),
                           Text("Stay Healthy with Our Spesialis Doctor",
                              style: GoogleFonts.poppins(
                                fontSize:14,
                                color: Color(0xff9698A9),
                                fontWeight: FontWeight.w300,
                              ),
                           ),
                        ],
                      ),
                       Container(
        width: 76,
        height: 76,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
          image: AssetImage(
            "assets/img_profile.png"
                    )))),
                    ],
                  ),
                  doctorcard("assets/img_doc 2.png","Dr.Mawar.N", "Spesialis Penyakit Dalam"),
                  doctorcard("assets/img_doc1.png", "Dr.Zizah.Ayuningsih","Spesial Kulit Kelamin")
                ],
              ),
            ),
          ),
       ),
    );
  }
}