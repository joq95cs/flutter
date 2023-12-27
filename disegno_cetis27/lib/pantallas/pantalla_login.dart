import 'package:disegno_cetis27/pantallas/componentes/componentes.dart';
import 'package:flutter/material.dart';

class PantallaLogin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 40),
          color: Color(0xFFfafafa),
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Componentes.getLogo(),
              Componentes.getCampoTextoTipo1(
                  'Usuario', Icon(Icons.person_outline), false),
              Componentes.getCampoTextoTipo1(
                  'Contraseña', Icon(Icons.lock_outline), true),
              Componentes.getBotonTipo1('INICIAR SESIÓN'),
            ],
          ),
        ),
      ),
    );
  }
}
