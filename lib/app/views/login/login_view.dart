import 'package:flutter/material.dart';
import 'package:hardflix/app/services/navigator_service/navigator_custom_service.dart';
import 'package:hardflix/app/views/create_account/create_account_view.dart';
import 'package:hardflix/app/views/home/home_view.dart';
import 'package:hardflix/app/widgets/buttom_large_custom/buttom_large_custom_widget.dart';
import 'package:hardflix/app/widgets/input_custom/input_custom_widget.dart';
import 'package:hardflix/app/widgets/logo/logo_marca_widget.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: GestureDetector(
            onTap: () => FocusScope.of(context).unfocus(),
            child: Container(
                alignment: Alignment.center,
                width: double.infinity,
                height: double.infinity,
                decoration: const BoxDecoration(color: Color(0x804EEAFF)),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(
                        child: Column(
                          children: [
                            const LogoMarca(),
                            const InputCustomWidget(
                              inputTitle: "E-mail",
                            ),
                            const InputCustomWidget(
                              inputTitle: "Senha",
                              paddingBottom: 22.0,
                            ),
                            ButtonLargeCustomWidget(
                              buttonName: 'Entrar',
                              onPressed: () => NavigatorCustomService.push(
                                  pageName: const HomeView(), context: context),
                            ),
                            const ButtonLargeCustomWidget(
                                buttonName: 'Entrar com '),
                            GestureDetector(
                              onTap: () => NavigatorCustomService.push(
                                  pageName: const CreateAccountView(),
                                  context: context),
                              child: const Text.rich(
                                TextSpan(
                                  children: [
                                    TextSpan(
                                      text: "Não tem conta? ",
                                      style: TextStyle(
                                          fontFamily: "Poppins",
                                          color: Colors.black,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    TextSpan(
                                      text: "Crie sua conta",
                                      style: TextStyle(
                                        fontFamily: "Poppins",
                                        color: Colors.black,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600,
                                        decoration: TextDecoration.underline,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ))));
  }
}
