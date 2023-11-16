import 'package:flutter/material.dart';

class SafeAreaCustomWidget extends StatelessWidget {
  const SafeAreaCustomWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(
          left: 29.0,
          right: 29.0,
          top: 15.0,
        ),
        child: Row(
          children: const [
            Icon(
              Icons.arrow_back,
              size: 30,
              color: Color(0xFF36848F),
            ),
            Padding(
              padding: EdgeInsets.only(left: 58.0),
              child: Text(
                'Hardflix',
                style: TextStyle(
                    fontFamily: "Lobster",
                    fontWeight: FontWeight.w700,
                    fontSize: 25,
                    color: Color(0xFFFFFFFF)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
