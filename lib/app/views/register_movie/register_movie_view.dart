import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hardflix/app/widgets/app_bar_custom/app_bar_custom.dart';
import 'package:hardflix/app/widgets/buttom_large_custom/buttom_large_custom_widget.dart';
import 'package:hardflix/app/widgets/input_custom/input_custom_widget.dart';
import 'package:hardflix/app/widgets/safe_area/safe_area_widget.dart';

class RegisterMovieView extends StatefulWidget {
  const RegisterMovieView({super.key});

  @override
  State<RegisterMovieView> createState() => _RegisterMovieViewState();
}

class _RegisterMovieViewState extends State<RegisterMovieView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarCustomWidget(
        preferredSize: Size.fromHeight(65.0),
        child: SafeAreaCustomWidget(),
      ),
      backgroundColor: const Color(0x804EEAFF),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Container(
                height: 200,
                width: 150,
                decoration: const BoxDecoration(
                  color: Color(0xFFD9D9D9),
                ),
                child: const SizedBox(
                  child: Icon(Icons.photo_library),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 135.0,
                vertical: 14.0,
              ),
              child: Row(
                children: const [
                  Icon(Icons.star_border_outlined),
                  Icon(Icons.star_border_outlined),
                  Icon(Icons.star_border_outlined),
                  Icon(Icons.star_border_outlined),
                  Icon(Icons.star_border_outlined),
                ],
              ),
            ),
            Column(
              children: const [
                InputCustomWidget(
                  inputTitle: 'Título do filme',
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  'Duração',
                  style: GoogleFonts.getFont("Poppins",
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.w600),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 100.0),
                  child: Text(
                    'Ano de lançamento',
                    style: GoogleFonts.getFont("Poppins",
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.w600),
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                InputCustomWidget(
                  customWidth: 159,
                  paddingTop: 0,
                ),
                InputCustomWidget(
                  customWidth: 159,
                  paddingTop: 0,
                )
              ],
            ),
            const InputCustomWidget(
              inputTitle: 'Gênero',
              paddingTop: 0,
            ),
            const InputCustomWidget(
              inputTitle: 'Idioma',
              paddingTop: 0,
              paddingBottom: 26.0,
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 200.0),
                  child: Text(
                    'Classificação Etária',
                    style: GoogleFonts.getFont("Poppins",
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ],
            ),
            Row(
              children: const [
                Padding(
                  padding: EdgeInsets.only(left: 27.0),
                  child: Icon(Icons.remove_circle_sharp),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 15.0, right: 15.0),
                  child: InputCustomWidget(
                    customWidth: 60,
                    paddingTop: 0,
                  ),
                ),
                Icon(Icons.add_circle_sharp),
                ButtonLargeCustomWidget(
                  buttonName: 'Confirmar',
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
