import 'package:flutter/material.dart';
import 'package:hardflix/app/widgets/app_bar_custom/app_bar_custom.dart';
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
      body: Padding(
        padding: const EdgeInsets.only(left: 120.0, top: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 200,
              width: 150,
              decoration: const BoxDecoration(
                color: Color(0xFFD9D9D9),
              ),
              child: const SizedBox(
                child: Icon(Icons.photo_library),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 14.0, left: 15.0),
              child: Row(
                children: const [
                  Icon(Icons.star_border_outlined),
                  Icon(Icons.star_border_outlined),
                  Icon(Icons.star_border_outlined),
                  Icon(Icons.star_border_outlined),
                  Icon(Icons.star_border_outlined),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
