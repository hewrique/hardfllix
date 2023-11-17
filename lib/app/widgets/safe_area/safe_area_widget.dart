import 'package:flutter/material.dart';
import 'package:hardflix/app/services/navigator_service/navigator_custom_service.dart';
import 'package:hardflix/app/views/home/home_view.dart';

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
          children: [
            GestureDetector(
              onTap: () => NavigatorCustomService.push(
                  context: context, pageName: const HomeView()),
              child: const Icon(
                Icons.arrow_back,
                size: 30,
                color: Color(0xFF36848F),
              ),
            ),
            const Padding(
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
