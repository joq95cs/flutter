import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'componentes/componentes.dart';

class PantallaNuevoReporte extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: Componentes.getAppBar('Nuevo reporte'),
        body: Container(
          margin: EdgeInsets.only(top: 15.0),
          padding: EdgeInsets.symmetric(horizontal: 10),
          color: Color(0xFFfafafa),
          width: double.infinity,
          child: Stack(
            children: [
              Column(
                children: [
                  Componentes.getCampoTextoTipo1(
                      'Asunto', Icon(Icons.edit), false),
                  Componentes.getAreaTexto(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Componentes.getEtiqueta('Espacio'),
                      Componentes.getDesplegable(
                          ['Biblioteca', 'Cafetería', 'Baños', 'Otro'],
                          'Biblioteca'),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Componentes.getEtiqueta('Subespacio'),
                      Componentes.getDesplegable([
                        'Biblioteca principal',
                        'Cafetería principal',
                        'Baños principales',
                        'Otro'
                      ], 'Biblioteca principal'),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Componentes.getEtiqueta('Categoría'),
                      Componentes.getDesplegable([
                        'Categoría 1',
                        'Categoría 2',
                        'Categoría 3',
                      ], 'Categoría 1'),
                    ],
                  ),
                  Container(
                      child: Componentes.getBotonTipo2('Agregar foto',
                          Icons.camera_enhance_outlined, 180, 30, 15)),
                ],
              ),
              Container(
                margin: EdgeInsets.only(bottom: 15.0),
                alignment: Alignment.bottomCenter,
                child: Componentes.getBotonTipo1('ENVIAR'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
