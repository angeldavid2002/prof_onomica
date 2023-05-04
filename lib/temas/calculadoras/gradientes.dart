import 'dart:math';

import 'package:flutter/material.dart';
import 'package:prof_onomica/temas/plantillaTema.dart';

class Gradientes extends StatefulWidget {
  const Gradientes({super.key});
  @override
  State<Gradientes> createState() => _GradientesState();
}

int _index = 0;
List<Widget> _opciones = <Widget>[
  const VistaValorPresente(),
  const ValorFuturo(),
  const ValorFinal(),
  const PrimerPago(),
  const TasaInteres(),
  const NumeroPeriodos(),
  const IncrementoPago(),
];

class Gradiente {
  List<Variable> variables = <Variable>[];
  Gradiente() {
    variables = [
      Variable("p"),
      Variable("a"),
      Variable("g"),
      Variable("fv"),
      Variable("vf"),
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

Gradiente _gradiente = Gradiente();

class _GradientesState extends State<Gradientes> {
  final int variable = 0;
  final String titulo = "titulo", respuesta = "respuesta", valor = "valor";
  bool resultado = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 0, bottom: 0),
      child: Column(
        children: [
          const Titulo(texto: "VARIABLES"),
          const lineaDecorativa(),
          const Text(
            'P = valor presente.\n\n'
            'A = primer pago.\n\n'
            'G = incremento en cada pago.\n\n'
            'FV = valor futuro.\n\n'
            'VF = valor final\n\n'
            'i = tasa de interés por período\n\n'
            'n = número de períodos\n\n',
            style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 15,
              color: Color(0xFF154316),
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          const lineaDecorativa(),
          const Titulo(texto: "CALCULADORA"),
          const lineaDecorativa(),
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
                      });
                    },
                    child: const Text(
                      "Valor final",
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
                      });
                    },
                    child: const Text(
                      "Primer pago",
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
                        _index = 4;
                        resultado = false;
                      });
                    },
                    child: const Text(
                      "Incremento cada pago",
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
                        _index = 5;
                        resultado = false;
                      });
                    },
                    child: const Text(
                      "Tasa de interés por período",
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
                        _index = 6;
                        resultado = false;
                      });
                    },
                    child: const Text(
                      "Número de períodos",
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

class IncrementoPago extends StatelessWidget {
  const IncrementoPago({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        InputVariable(nombreVariable: "fv"),
        InputVariable(nombreVariable: "a"),
        InputVariable(nombreVariable: "i"),
        InputVariable(nombreVariable: "n"),
      ],
    );
  }
}

class NumeroPeriodos extends StatelessWidget {
  const NumeroPeriodos({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        InputVariable(nombreVariable: "fv"),
        InputVariable(nombreVariable: "i"),
        InputVariable(nombreVariable: "g"),
        InputVariable(nombreVariable: "p"),
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
        InputVariable(nombreVariable: "fv"),
        InputVariable(nombreVariable: "p"),
        InputVariable(nombreVariable: "i"),
        InputVariable(nombreVariable: "n"),
        InputVariable(nombreVariable: "g"),
        InputVariable(nombreVariable: "a"),
      ],
    );
  }
}

class PrimerPago extends StatelessWidget {
  const PrimerPago({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        InputVariable(nombreVariable: "fv"),
        InputVariable(nombreVariable: "g"),
        InputVariable(nombreVariable: "i"),
        InputVariable(nombreVariable: "n"),
      ],
    );
  }
}

class ValorFinal extends StatelessWidget {
  const ValorFinal({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        InputVariable(nombreVariable: "vp"),
        InputVariable(nombreVariable: "p"),
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
        InputVariable(nombreVariable: "a"),
        InputVariable(nombreVariable: "g"),
        InputVariable(nombreVariable: "i"),
        InputVariable(nombreVariable: "n"),
      ],
    );
  }
}

class VistaValorPresente extends StatelessWidget {
  const VistaValorPresente({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        InputVariable(nombreVariable: "a"),
        InputVariable(nombreVariable: "g"),
        InputVariable(nombreVariable: "i"),
        InputVariable(nombreVariable: "n"),
      ],
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
              height: 50,
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
              height: 50,
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
  for (var element in _gradiente.variables) {
    if (element.nombre == nombre) {
      element.valor = valor;
    }
  }
}

double buscarVariable(String nombre) {
  if (_gradiente.variables
          .firstWhere((element) => element.nombre == nombre)
          .valor ==
      null) {
    return 0.0;
  } else {
    return _gradiente.variables
        .firstWhere((element) => element.nombre == nombre)
        .valor!
        .toDouble();
  }
}

double valorPresente() {
  return (buscarVariable("a") *
          (1 - (1 + buscarVariable("i")) - buscarVariable("n")) *
          buscarVariable("i") +
      (buscarVariable("g") * buscarVariable("i")) *
          ((1 - (1 + buscarVariable("i")) - buscarVariable("n")) *
                  buscarVariable("i") -
              buscarVariable("n") *
                  (1 + buscarVariable("i")) *
                  buscarVariable("n")));
}

double valorFuturo() {
  return (buscarVariable("a") *
          (((1 + buscarVariable("i")) * buscarVariable("n") - 1) /
              buscarVariable("i")) +
      buscarVariable("g") *
          (((1 + buscarVariable("i")) * buscarVariable("n") - 1) /
              buscarVariable("i")) *
          (1 + buscarVariable("i")));
}

double valorFinal() {
  return (buscarVariable("vp") *
      pow((1 + buscarVariable("i")), buscarVariable("n")));
}

double primerPago() {
  return ((buscarVariable("fv") - buscarVariable("g") / buscarVariable("i")) /
      (pow((1 + buscarVariable("i")), buscarVariable("n")) -
          1 / buscarVariable("i")));
}

double tasaInteres() {
  return (((buscarVariable("fv") -
              buscarVariable("p") *
                  pow((1 + buscarVariable("i")), buscarVariable("n")) *
                  buscarVariable("g")) /
          (buscarVariable("a") *
                  pow((1 + buscarVariable("i")), buscarVariable("n")) -
              buscarVariable("p") *
                  pow((1 + buscarVariable("i")), buscarVariable("n")) *
                  buscarVariable("g"))) /
      ((buscarVariable("n") + 1) / 2));
}

double numeroPeriodos() {
  return (log(
          ((buscarVariable("fv") * buscarVariable("i") + buscarVariable("g")) /
                  (buscarVariable("p") * buscarVariable("i") +
                      buscarVariable("g"))) +
              1) /
      log(1 + buscarVariable("i")));
}

double incremento() {
  return ((buscarVariable("fv") -
          buscarVariable("a") *
              (pow((1 + buscarVariable("i")), buscarVariable("n")) - 1) /
              buscarVariable("i")) /
      (pow((1 + buscarVariable("i")), buscarVariable("n")) - 1));
}

String calcular(int index) {
  switch (index) {
    case 0:
      return valorPresente().toString();
    case 1:
      return valorFuturo().toString();
    case 2:
      return valorFinal().toString();
    case 3:
      return primerPago().toString();
    case 4:
      return incremento().toString();
    case 5:
      return tasaInteres().toString();
    case 6:
      return numeroPeriodos().toString();
    default:
      return "Error";
  }
}
