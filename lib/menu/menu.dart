// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors, prefer_const_constructors_in_immutables, camel_case_types

import 'package:flutter/material.dart';
import 'package:prof_onomica/temas/calculadoras/gradientes.dart';
import 'package:prof_onomica/temas/plantillaTema.dart';

class Menu extends StatefulWidget {
  const Menu({super.key});

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        backgroundColor: Color.fromARGB(255, 62, 82, 60),
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: Text(
          "TEMAS DISPONIBLES",
          style: TextStyle(
            fontSize: 18,
            color: Color.fromARGB(255, 255, 255, 255),
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.normal,
            fontFamily: 'Roboto',
            decoration: TextDecoration.none,
          ),
        ),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
          image: AssetImage("assets/images/fondo_de_home.png"),
          fit: BoxFit.cover,
        )),
        child: Padding(
          padding: EdgeInsets.only(top: 10, bottom: 10, right: 0, left: 0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ListView(
                  padding: EdgeInsets.zero,
                  primary: false,
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  children: [
                    item_lista(
                      titulo: "INTERES SIMPLE",
                      ruta: "assets/images/tasa-de-interes.png",
                      pagina: Plantilla(
                        teoria:
                            "En ingeniería económica, el gradiente aritmético se refiere a una serie de pagos iguales que varían de forma aritmética. En otras palabras, cada pago en la serie aumenta o disminuye en una cantidad constante en lugar de una cantidad constante multiplicativa como en el caso del gradiente geométrico.Hay algunas fórmulas útiles que se utilizan para calcular el valor presente y el valor futuro de una serie de pagos con un gradiente aritmético.",
                        titulo: "INTERES SIMPLE",
                        rutaImagen: "assets/images/creciente.png",
                        rutaFormula: "assets/images/formulas_gradiente.png",
                        calculadora: Gradientes(),
                      ),
                    ),
                    item_lista(
                      titulo: "GRADIENTE ARITMETICO",
                      ruta: "assets/images/creciente.png",
                      pagina: Plantilla(
                        teoria:
                            "En ingeniería económica, el gradiente aritmético se refiere a una serie de pagos iguales que varían de forma aritmética. En otras palabras, cada pago en la serie aumenta o disminuye en una cantidad constante en lugar de una cantidad constante multiplicativa como en el caso del gradiente geométrico.Hay algunas fórmulas útiles que se utilizan para calcular el valor presente y el valor futuro de una serie de pagos con un gradiente aritmético.",
                        titulo: "GRADIENTE ARITMETICO",
                        rutaImagen: "assets/images/creciente.png",
                        rutaFormula: "assets/images/formulas_gradiente.png",
                        calculadora: Gradientes(),
                      ),
                    ),
                    item_lista(
                      titulo: "TITULO",
                      ruta: "assets/images/it_works.jpg",
                      pagina: Plantilla(
                        calculadora: Gradientes(),
                      ),
                    ),
                    item_lista(
                      titulo: "TITULO",
                      ruta: "assets/images/it_works.jpg",
                      pagina: Plantilla(
                        calculadora: Gradientes(),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class item_lista extends StatelessWidget {
  item_lista({required this.titulo, required this.ruta, required this.pagina});

  final String titulo, ruta;
  final Widget pagina;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 8, bottom: 0, right: 16, left: 16),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => pagina));
        },
        child: Container(
          width: 100,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Colors.white,
          ),
          padding: EdgeInsets.only(top: 8, bottom: 8, right: 16, left: 16),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 0, bottom: 0, right: 8, left: 8),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Text(
                        titulo,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 20,
                          color: Color(0xFF154316),
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.normal,
                          fontFamily: 'Poppins',
                          decoration: TextDecoration.none,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding:
                    EdgeInsets.only(top: 8, bottom: 8, right: 10, left: 10),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Image.asset(
                          ruta,
                          fit: BoxFit.cover,
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
