import 'dart:math';

import 'package:flutter/material.dart';

import '../plantilla_tema.dart';

int _index = 0;

List<Widget> _opciones = <Widget>[
  const ValorActual(),
  const ValorFuturo(),
];

class Anualidad {
  List<Variable> variables = <Variable>[];
  Anualidad() {
    variables = [
      Variable("a"),
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

Anualidad _anualidad = Anualidad();

class Anualidades extends StatefulWidget {
  const Anualidades({super.key});

  @override
  State<Anualidades> createState() => _AnualidadesState();
}

class _AnualidadesState extends State<Anualidades> {
  bool resultado = false;
  Color Activo = const Color(0xFF326933);
  Color Inactivo = Color.fromARGB(255, 2, 51, 4);

  Color cambiarColor(int index) {
    Color colorActual;
    if (index == _index) {
      colorActual = Activo;
    } else {
      colorActual = Inactivo;
    }
    return colorActual;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(0),
      child: Column(
        children: [
          const Titulo(texto: "VARIABLES"),
          const LineaDecorativa(),
          const Text(
            'Va = valor actual.\n\n'
            'VF = valor futuro.\n\n'
            'a = valor de las anualidades\n\n'
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
                          cambiarColor(0)),
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
                      "Valor actual",
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
                          cambiarColor(1)),
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
                      "Valor futuro",
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

class ValorActual extends StatelessWidget {
  const ValorActual({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        InputVariable(nombreVariable: "a"),
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
        InputVariable(nombreVariable: "i"),
        InputVariable(nombreVariable: "n"),
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
  for (var element in _anualidad.variables) {
    if (element.nombre == nombre) {
      element.valor = valor;
    }
  }
}

double buscarVariable(String nombre) {
  if (_anualidad.variables
          .firstWhere((element) => element.nombre == nombre)
          .valor ==
      null) {
    return 0.0;
  } else {
    return _anualidad.variables
        .firstWhere((element) => element.nombre == nombre)
        .valor!
        .toDouble();
  }
}

String calcular(int index) {
  switch (index) {
    case 0:
      return valorActual().toString();
    case 1:
      return valorFuturo().toString();
    default:
      return "Error";
  }
}

double valorFuturo() {
  return (buscarVariable("a") *
      ((pow((1 + buscarVariable("i")), buscarVariable("n")) - 1) /
          buscarVariable("i")));
}

double valorActual() {
  return (buscarVariable("a") *
      ((1 - pow((1 + buscarVariable("i")), -buscarVariable("n"))) /
          buscarVariable("i")));
}

void limpiarValores() {
  for (var element in _anualidad.variables) {
    element.valor = null;
  }
}
