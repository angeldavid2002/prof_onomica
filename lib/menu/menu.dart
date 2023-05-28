
import 'package:flutter/material.dart';
import 'package:prof_onomica/temas/calculadoras/interes_simple.dart';
import 'package:prof_onomica/temas/calculadoras/gradientes.dart';
import 'package:prof_onomica/temas/plantilla_tema.dart';

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
        backgroundColor: const Color.fromARGB(255, 62, 82, 60),
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: const Text(
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
        decoration: const BoxDecoration(
            image: DecorationImage(
          image: AssetImage("assets/images/fondo_de_home.png"),
          fit: BoxFit.cover,
        )),
        child: Padding(
          padding: const EdgeInsets.only(top: 10, bottom: 10, right: 0, left: 0),
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
                  children: const [
                    ItemLista(
                      titulo: "INTERES SIMPLE",
                      ruta: "assets/images/tasa-de-interes.png",
                      pagina: Plantilla(
                        teoria:
                            "El interés simple es un concepto fundamental en finanzas que se utiliza para calcular el costo de pedir dinero prestado o el beneficio de invertir dinero en una cuenta bancaria o en un proyecto.\nEl interés simple se basa en un porcentaje, llamado tasa de interés, que se aplica al monto principal del préstamo o inversión durante un período de tiempo determinado. Por lo general, la tasa de interés se expresa en términos anuales, aunque también se puede expresar en términos mensuales, trimestrales, semestrales, etc.\nEs importante tener en cuenta que el interés simple no tiene en cuenta el efecto de los intereses generados sobre los intereses previos, por lo que se suele utilizar en situaciones donde el período de tiempo es corto o cuando la tasa de interés es baja. Si el período de tiempo es más largo o la tasa de interés es más alta, se suele utilizar el concepto de interés compuesto, que tiene en cuenta los intereses generados sobre los intereses previos.",
                        titulo: "INTERES SIMPLE",
                        rutaImagen: "assets/images/tasa-de-interes.png",
                        rutaFormula: "assets/images/formulasInteresSimple.jpg",
                        calculadora: InteresSimple(),
                      ),
                    ),
                    ItemLista(
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
                    ItemLista(
                      titulo: "TITULO",
                      ruta: "assets/images/logoDefinitivo.png",
                      pagina: Plantilla(
                        rutaFormula: "assets/images/logoDefinitivo.png",
                        rutaImagen: "assets/images/logoDefinitivo.png",
                        calculadora: Gradientes(),
                      ),
                    ),
                    ItemLista(
                      titulo: "TITULO",
                      ruta: "assets/images/logoDefinitivo.png",
                      pagina: Plantilla(
                        rutaFormula: "assets/images/logoDefinitivo.png",
                        rutaImagen: "assets/images/logoDefinitivo.png",
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

class ItemLista extends StatelessWidget {
  const ItemLista({super.key, required this.titulo, required this.ruta, required this.pagina});

  final String titulo, ruta;
  final Widget pagina;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8, bottom: 0, right: 16, left: 16),
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
          padding: const EdgeInsets.only(top: 8, bottom: 8, right: 16, left: 16),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 0, bottom: 0, right: 8, left: 8),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Text(
                        titulo,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
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
                    const EdgeInsets.only(top: 8, bottom: 8, right: 10, left: 10),
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
