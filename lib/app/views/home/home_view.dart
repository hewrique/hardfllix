import 'package:flutter/material.dart';
import 'package:hardflix/app/services/navigator_service/navigator_custom_service.dart';
import 'package:hardflix/app/views/delete_movie/delete_movie_view.dart';
import 'package:hardflix/app/views/edit_movie/edit_movie_view.dart';
import 'package:hardflix/app/views/register_movie/register_movie_view.dart';
import 'package:hardflix/app/views/show_movie/show_movie_view.dart';
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
        backgroundColor: const Color(0x804EEAFF),
        body: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Container(
            alignment: Alignment.center,
            width: double.infinity,
            height: double.infinity,
            child: SingleChildScrollView(
                child: Column(
              children: [
                SizedBox(
                  child: Column(
                    children: [
                      const LogoMarca(),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 38.0, top: 30),
                        child: ButtonLargeCustomWidget(
                          buttonName: 'Cadastrar',
                          onPressed: () => NavigatorCustomService.push(
                              pageName: const RegisterMovieView(),
                              context: context),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 38.0),
                        child: ButtonLargeCustomWidget(
                          buttonName: 'Exibir',
                          onPressed: () => NavigatorCustomService.push(
                              pageName: const ShowMovieView(),
                              context: context),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 38.0),
                        child: ButtonLargeCustomWidget(
                          buttonName: 'Editar',
                          onPressed: () => NavigatorCustomService.push(
                              pageName: const EditMovieView(),
                              context: context),
                        ),
                      ),
                      ButtonLargeCustomWidget(
                        buttonName: 'Excluir',
                        onPressed: () => NavigatorCustomService.push(
                            pageName: const DeleteMovieView(),
                            context: context),
                      ),
                    ],
                  ),
                ),
              ],
            )),
          ),
        ));
  }
}
