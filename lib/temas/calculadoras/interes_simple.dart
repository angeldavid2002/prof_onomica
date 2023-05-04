import 'package:flutter/material.dart';

import '../plantilla_tema.dart';

int _index = 0;

List<Widget> _opciones = <Widget>[
  const ValorPresente(),
  const ValorFuturo(),
  const TasaInteres(),
  const TiempoNegociacion()
];

class ISimple {
  List<Variable> variables = <Variable>[];
  ISimple() {
    variables = [
      Variable("p"),
      Variable("f"),
      Variable("i"),
      Variable("n"),
    ];
  }
}

class Variable {
  late String nombre;
  double? valor;
  Variable(String nombreExterno) {
    nombre = nombreExterno;
  }
}

ISimple _iSimple = ISimple();

class InteresSimple extends StatefulWidget {
  const InteresSimple({super.key});

  @override
  State<InteresSimple> createState() => _InteresSimpleState();
}

class _InteresSimpleState extends State<InteresSimple> {
  bool resultado = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(0),
      child: Column(
        children: [
          const Titulo(texto: "VARIABLES"),
          const LineaDecorativa(),
          const Text(
            'P = valor presente.\n\n'
            'F = valor futuro.\n\n'
            'i = tasa de interés por período\n\n'
            'n = tiempo de negociacion',
            style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 15,
              color: Color(0xFF154316),
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          const LineaDecorativa(),
          const Titulo(texto: "CALCULADORA"),
          const LineaDecorativa(),
          SizedBox(
            height: 50,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                SizedBox(
                  height: 50,
                  width: 250,
                  child: TextButton(
                    style: ButtonStyle(
                      foregroundColor: MaterialStateProperty.all<Color>(
                          const Color.fromARGB(255, 2, 51, 4)),
                      backgroundColor: MaterialStateProperty.all<Color>(
                          const Color.fromARGB(255, 2, 51, 4)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(0.0)),
                      ),
                    ),
                    onPressed: () {
                      setState(() {
                        _index = 0;
                        resultado = false;
                        limpiarValores();
                      });
                    },
                    child: const Text(
                      "valor presente",
                      style: TextStyle(
                        fontSize: 18,
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontWeight: FontWeight.w700,
                        fontFamily: 'Lexend Deca',
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 50,
                  width: 250,
                  child: TextButton(
                    style: ButtonStyle(
                      foregroundColor: MaterialStateProperty.all<Color>(
                          const Color.fromARGB(255, 2, 51, 4)),
                      backgroundColor: MaterialStateProperty.all<Color>(
                          const Color.fromARGB(255, 2, 51, 4)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(0.0)),
                      ),
                    ),
                    onPressed: () {
                      setState(() {
                        _index = 1;
                        resultado = false;
                        limpiarValores();
                      });
                    },
                    child: const Text(
                      "valor futuro",
                      style: TextStyle(
                        fontSize: 18,
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontWeight: FontWeight.w700,
                        fontFamily: 'Lexend Deca',
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 50,
                  width: 250,
                  child: TextButton(
                    style: ButtonStyle(
                      foregroundColor: MaterialStateProperty.all<Color>(
                          const Color.fromARGB(255, 2, 51, 4)),
                      backgroundColor: MaterialStateProperty.all<Color>(
                          const Color.fromARGB(255, 2, 51, 4)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(0.0)),
                      ),
                    ),
                    onPressed: () {
                      setState(() {
                        _index = 2;
                        resultado = false;
                        limpiarValores();
                      });
                    },
                    child: const Text(
                      "Tasa de interes",
                      style: TextStyle(
                        fontSize: 18,
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontWeight: FontWeight.w700,
                        fontFamily: 'Lexend Deca',
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 50,
                  width: 250,
                  child: TextButton(
                    style: ButtonStyle(
                      foregroundColor: MaterialStateProperty.all<Color>(
                          const Color.fromARGB(255, 2, 51, 4)),
                      backgroundColor: MaterialStateProperty.all<Color>(
                          const Color.fromARGB(255, 2, 51, 4)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(0.0)),
                      ),
                    ),
                    onPressed: () {
                      setState(() {
                        _index = 3;
                        resultado = false;
                        limpiarValores();
                      });
                    },
                    child: const Text(
                      "Tiempo de negociacion",
                      style: TextStyle(
                        fontSize: 18,
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontWeight: FontWeight.w700,
                        fontFamily: 'Lexend Deca',
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          _opciones[_index],
          SizedBox(
            height: 50,
            width: 250,
            child: TextButton(
              style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all<Color>(
                    const Color.fromARGB(255, 2, 51, 4)),
                backgroundColor: MaterialStateProperty.all<Color>(
                    const Color.fromARGB(255, 2, 51, 4)),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50.0)),
                ),
              ),
              onPressed: () {
                setState(() {
                  resultado = true;
                });
              },
              child: const Text(
                'Calcular',
                style: TextStyle(
                  fontSize: 18,
                  color: Color.fromARGB(255, 255, 255, 255),
                  fontWeight: FontWeight.w700,
                  fontFamily: 'Lexend Deca',
                ),
              ),
            ),
          ),
          if (resultado)
            Respuesta(respuesta: "Respuesta", valor: calcular(_index))
        ],
      ),
    );
  }
}

class Respuesta extends StatelessWidget {
  const Respuesta({
    super.key,
    required this.respuesta,
    required this.valor,
  });

  final String respuesta;
  final String valor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            flex: 5,
            child: Container(
              height: 60,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    topLeft: Radius.circular(30)),
                color: Color(0xFF154316),
              ),
              child: Center(
                child: Text(
                  respuesta,
                  style: const TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 9,
            child: Container(
              height: 60,
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(30),
                      bottomRight: Radius.circular(30)),
                  border: Border.all(
                    color: const Color(0xFF154316),
                  )),
              child: Center(
                child: Text(valor,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 20,
                      color: Color(0xFF154316),
                      fontWeight: FontWeight.normal,
                    )),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class ValorPresente extends StatelessWidget {
  const ValorPresente({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        InputVariable(nombreVariable: "f"),
        InputVariable(nombreVariable: "i"),
        InputVariable(nombreVariable: "n"),
      ],
    );
  }
}

class ValorFuturo extends StatelessWidget {
  const ValorFuturo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        InputVariable(nombreVariable: "p"),
        InputVariable(nombreVariable: "i"),
        InputVariable(nombreVariable: "n"),
      ],
    );
  }
}

class TasaInteres extends StatelessWidget {
  const TasaInteres({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        InputVariable(nombreVariable: "n"),
        InputVariable(nombreVariable: "f"),
        InputVariable(nombreVariable: "p"),
      ],
    );
  }
}

class TiempoNegociacion extends StatelessWidget {
  const TiempoNegociacion({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        InputVariable(nombreVariable: "i"),
        InputVariable(nombreVariable: "f"),
        InputVariable(nombreVariable: "p"),
      ],
    );
  }
}

class InputVariable extends StatefulWidget {
  const InputVariable({super.key, this.nombreVariable = ""});
  final String nombreVariable;

  @override
  State<InputVariable> createState() => _InputVariableState();
}

class _InputVariableState extends State<InputVariable> {
  final TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            flex: 2,
            child: Container(
              height: 50,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    topLeft: Radius.circular(30)),
                color: Color(0xFF154316),
              ),
              child: Center(
                child: Text(
                  widget.nombreVariable,
                  style: const TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 9,
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(30),
                      bottomRight: Radius.circular(30)),
                  border: Border.all(
                    color: const Color(0xFF154316),
                  )),
              child: TextFormField(
                keyboardType: TextInputType.number,
                controller: textEditingController,
                onChanged: (value) {
                  setState(() {
                    asignarVariables(widget.nombreVariable,
                        double.tryParse(textEditingController.text));
                  });
                },
                textAlign: TextAlign.center,
                decoration: const InputDecoration(border: InputBorder.none),
              ),
            ),
          )
        ],
      ),
    );
  }
}

void asignarVariables(String nombre, double? valor) {
  for (var element in _iSimple.variables) {
    if (element.nombre == nombre) {
      element.valor = valor;
    }
  }
}

double buscarVariable(String nombre) {
  if (_iSimple.variables
          .firstWhere((element) => element.nombre == nombre)
          .valor ==
      null) {
    return 0.0;
  } else {
    return _iSimple.variables
        .firstWhere((element) => element.nombre == nombre)
        .valor!
        .toDouble();
  }
}

String calcular(int index) {
  switch (index) {
    case 0:
      return valorPresente().toString();
    case 1:
      return valorFuturo().toString();
    case 2:
      return tasaInteres().toString();
    case 3:
      return tiempoNegociacion().toString();
    default:
      return "Error";
  }
}

double tiempoNegociacion() {
  return ((1 / buscarVariable("i")) *
      ((buscarVariable("f") / buscarVariable("p")) - 1));
}

double tasaInteres() {
  return ((1 / buscarVariable("n")) *
      ((buscarVariable("f") / buscarVariable("p")) - 1));
}

double valorFuturo() {
  return (buscarVariable("p") *
      (1 + buscarVariable("i") * buscarVariable("n")));
}

double valorPresente() {
  return (buscarVariable("f") /
      (1 + buscarVariable("n") * buscarVariable("i")));
}

void limpiarValores() {
  for (var element in _iSimple.variables) {
    element.valor = null;
  }
}
