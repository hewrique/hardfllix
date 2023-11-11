import 'package:flutter/material.dart';
import 'package:hardflix/app/widgets/buttom_large_custom/buttom_large_custom_widget.dart';
import 'package:hardflix/app/widgets/logo/logo_marca_widget.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
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
                children: const [
                  LogoMarca(),
                  ButtonLargeCustomWidget(buttonName: 'Cadastrar'),
                  ButtonLargeCustomWidget(buttonName: 'Exibir'),
                  ButtonLargeCustomWidget(buttonName: 'Editar'),
                  ButtonLargeCustomWidget(buttonName: 'Excluir'),
                ],
              ),
            ),
          ],
        )),
      ),
    ));
  }
}
