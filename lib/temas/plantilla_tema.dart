import 'package:flutter/material.dart';

class Plantilla extends StatelessWidget {
  const Plantilla({super.key, 
    this.titulo = "titulo",
    this.rutaImagen = "assets/images/it_works.jpg",
    this.teoria =
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
    this.rutaFormula = "assets/images/it_works.jpg",
    required this.calculadora,
  });
  final String rutaImagen, teoria, rutaFormula, titulo;
  final Widget calculadora;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * 1,
        decoration: BoxDecoration(
            color: Colors.greenAccent,
            image: const DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/images/fondo_de_home.png')),
            borderRadius: BorderRadius.circular(0)),
        child: Stack(
          children: [
            Container(
              decoration: const BoxDecoration(
                color: Color(0x00FFFFFF),
              ),
              child: Align(
                alignment: const AlignmentDirectional(0, -0.89),
                child: Text(
                  titulo,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                      fontFamily: 'Poppins',
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Align(
              alignment: const AlignmentDirectional(0, 1),
              child: Container(
                height: MediaQuery.of(context).size.height * 0.8,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(0),
                      bottomRight: Radius.circular(0),
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    )),
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(15, 15, 15, 15),
                  child: ListView(
                    padding: EdgeInsets.zero,
                    scrollDirection: Axis.vertical,
                    children: [
                      Row(mainAxisSize: MainAxisSize.max, children: [
                        Expanded(
                            child: ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: Image.asset(
                            rutaImagen,
                            fit: BoxFit.contain,
                          ),
                        )),
                      ]),
                      const LineaDecorativa(),
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Expanded(
                              child: Text(
                                teoria,
                                textAlign: TextAlign.justify,
                                style: const TextStyle(
                                  fontFamily: 'Poppins',
                                  color: Color(0xFF154316),
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      const LineaDecorativa(),
                      const Titulo(texto: "FORMULA"),
                      const LineaDecorativa(),
                      Imagen(rutaFormula: rutaFormula),
                      const LineaDecorativa(),
                      calculadora,
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class Imagen extends StatelessWidget {
  const Imagen({
    super.key,
    required this.rutaFormula,
  });

  final String rutaFormula;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      children: [
        Expanded(
          child: Image.asset(
            rutaFormula,
            width: 100,
            fit: BoxFit.contain,
          ),
        )
      ],
    );
  }
}

class Titulo extends StatelessWidget {
  const Titulo({super.key, 
    required this.texto,
  });
  final String texto;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
              child: Text(
            texto,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontFamily: 'Poppins',
              color: Color(0xFF154316),
              fontWeight: FontWeight.bold,
            ),
          ))
        ],
      ),
    );
  }
}

class LineaDecorativa extends StatelessWidget {
  const LineaDecorativa({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Expanded(
            child: Container(
              width: 100,
              height: 2,
              decoration: const BoxDecoration(
                color: Color(0xFF0A360A),
              ),
            ),
          ),
          Container(
            width: 10,
            height: 10,
            decoration: BoxDecoration(
              color: const Color(0xFF0A360A),
              borderRadius: BorderRadius.circular(50),
            ),
          ),
          Expanded(
            child: Container(
              width: 100,
              height: 2,
              decoration: const BoxDecoration(
                color: Color(0xFF0A360A),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
