import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LogoMarca extends StatelessWidget {
  final double espacamentoPaddingTop;
  const LogoMarca({super.key, this.espacamentoPaddingTop = 0.0});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: espacamentoPaddingTop),
      child: SizedBox(
        width: 167,
        height: 231,
        child: Stack(
          children: [
            Positioned(
              left: 16,
              top: 0,
              child: Container(
                width: 150,
                height: 150,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/img/logo/hardflix_logo.png"),
                      fit: BoxFit.fill),
                ),
              ),
            ),
            Positioned(
                left: 0,
                top: 150,
                child: SizedBox(
                  width: 167,
                  height: 81,
                  child: Stack(children: [
                    Positioned(
                      left: 0,
                      top: 0,
                      child: Text(
                        "Hardflix",
                        style: GoogleFonts.getFont("Paprika",
                            color: Colors.white,
                            fontSize: 40,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                  ]),
                ))
          ],
        ),
      ),
    );
  }
}
