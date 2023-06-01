import 'package:flutter/material.dart';
import 'package:prof_onomica/temas/calculadoras/anualidades.dart';
import 'package:prof_onomica/temas/calculadoras/interes_compuesto.dart';
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
          padding:
              const EdgeInsets.only(top: 10, bottom: 10, right: 0, left: 0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GridView(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2, // Cantidad de columnas en la cuadrícula
                    mainAxisSpacing:
                        1.0, // Espaciado vertical entre los elementos
                    crossAxisSpacing:
                        1.0, // Espaciado horizontal entre los elementos
                    childAspectRatio:
                        1.0, // Relación de aspecto de los elementos (ancho/alto)
                  ),
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
                      titulo: "INTERES COMPUESTO",
                      ruta: "assets/images/interes_compuesto.png",
                      pagina: Plantilla(
                        titulo: "INTERES COMPUESTO",
                        teoria:
                            "El interés compuesto es un concepto financiero de gran importancia debido a su capacidad para generar crecimiento exponencial en las inversiones y deudas a lo largo del tiempo. A diferencia del interés simple, donde los intereses se calculan únicamente sobre el capital inicial, el interés compuesto considera la acumulación de intereses sobre los intereses generados anteriormente.\nLa importancia del interés compuesto radica en su capacidad para potenciar el crecimiento de las inversiones y maximizar el impacto del tiempo en la generación de riqueza.\nA medida que los intereses se reinvierten periódicamente, se produce un efecto de 'interés sobre intereses' que impulsa el crecimiento acelerado de una inversión a largo plazo. Esto significa que cuanto más tiempo se mantenga una inversión con un interés compuesto, mayor será el impacto en su valor final.\nEl interés compuesto no solo es relevante para los inversores, sino también para las personas que tienen deudas. Al entender cómo funciona el interés compuesto, se puede apreciar la importancia de pagar las deudas lo antes posible, ya que el interés compuesto puede trabajar en contra si se acumulan intereses sobre una deuda.",
                        rutaFormula:
                            "assets/images/formulasInteresCompuesto.jpg",
                        rutaImagen: "assets/images/interes_compuesto.png",
                        calculadora: InteresCompuesto(),
                      ),
                    ),
                    ItemLista(
                      titulo: "ANUALIDADES",
                      ruta: "assets/images/anualidades.png",
                      pagina: Plantilla(
                        titulo: "ANUALIDADES",
                        teoria:
                            "Las anualidades son un concepto importante en matemáticas financieras que se utiliza para calcular el valor presente o futuro de una serie de pagos iguales realizados a intervalos regulares durante un período de tiempo. Estos pagos pueden ser depósitos regulares o retiros de una cuenta, y el intervalo de tiempo puede ser mensual, trimestral, anual, u otro período establecido.La matemática financiera se utiliza para analizar y tomar decisiones sobre inversiones, préstamos, planes de jubilación y otras situaciones financieras. Las anualidades son una herramienta útil en este campo porque permiten calcular el valor total de los pagos futuros o el valor presente de una serie de pagos, lo que ayuda a tomar decisiones informadas.",
                        rutaFormula: "assets/images/formulasAnualidades.jpg",
                        rutaImagen: "assets/images/anualidades.png",
                        calculadora: Anualidades(),
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
  const ItemLista(
      {super.key,
      required this.titulo,
      required this.ruta,
      required this.pagina});

  final String titulo, ruta;
  final Widget pagina;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8, bottom: 0, right: 5, left: 5),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => pagina));
        },
        child: Container(
          width: 60,
          height: 160,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Colors.white,
          ),
          padding:
              const EdgeInsets.only(top: 8, bottom: 8, right: 16, left: 16),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding:
                    const EdgeInsets.only(top: 0, bottom: 0, right: 8, left: 8),
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
                padding: const EdgeInsets.only(
                    top: 8, bottom: 8, right: 30, left: 30),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: ClipRRect(
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
