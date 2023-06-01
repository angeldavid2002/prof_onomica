import 'package:flutter/material.dart';
import 'package:prof_onomica/menu/menu.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'prof_onomica',
      home: Inicio(),
    );
  }
}

class Inicio extends StatefulWidget {
  const Inicio({super.key});

  @override
  State<Inicio> createState() => _InicioState();
}

class _InicioState extends State<Inicio> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 1,
      decoration: BoxDecoration(
        color: Colors.green,
        image: DecorationImage(
          fit: BoxFit.cover,
          image: Image.asset(
            'assets/images/fondo_de_home.png',
          ).image,
        ),
        borderRadius: BorderRadius.circular(0),
      ),
      child: Stack(
        children: [
          const Align(
            alignment: AlignmentDirectional(0, -0.4),
            child: Text(
              'Bienvenido a \nPROF-ONOMICA!',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontFamily: 'Lexend Deca',
                  color: Colors.white,
                  fontSize: 36,
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.none),
            ),
          ),
          Align(
            alignment: const AlignmentDirectional(0, 1),
            child: Container(
              height: 250,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: Align(
                alignment: const AlignmentDirectional(0, 0),
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(8, 0, 8, 0),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 10, 0, 10),
                              child: Text(
                                "¿Listo para descubrir los secretos\nde la ingenieria economica?",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Color(0xFF154316),
                                  fontWeight: FontWeight.w400,
                                  fontStyle: FontStyle.normal,
                                  fontFamily: 'Roboto',
                                  decoration: TextDecoration.none,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding:
                              const EdgeInsetsDirectional.fromSTEB(0, 16, 0, 0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Expanded(
                                child: TextButton(
                                  style: ButtonStyle(
                                    foregroundColor: MaterialStateProperty.all<
                                            Color>(
                                        const Color.fromARGB(255, 2, 51, 4)),
                                    backgroundColor: MaterialStateProperty.all<
                                            Color>(
                                        const Color.fromARGB(255, 2, 51, 4)),
                                    shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(50.0)),
                                    ),
                                  ),
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const Menu()));
                                  },
                                  child: const Text(
                                    'ENTRAR A LA APLICACION',
                                    style: TextStyle(
                                      fontSize: 18,
                                      color: Color.fromARGB(255, 255, 255, 255),
                                      fontWeight: FontWeight.w700,
                                      fontFamily: 'Lexend Deca',
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
