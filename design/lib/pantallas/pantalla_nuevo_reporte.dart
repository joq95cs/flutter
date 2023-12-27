import 'package:design/pantallas/widgets_comunes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PantallaNuevoReporte extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          margin: EdgeInsets.only(top: 20),
          padding: EdgeInsets.symmetric(horizontal: 10),
          color: Color(0xFFfafafa),
          width: double.infinity,
          child: Column(
            children: [
              WidgetsComunes.getCampoTexto('Asunto', Icon(Icons.edit), false),
              WidgetsComunes.getAreaTexto(
                  'Descripción', Icon(Icons.description)),
              WidgetsComunes.getDesplegable('Espacio'),
              WidgetsComunes.getDesplegable('Subespacio'),
              WidgetsComunes.getDesplegable('Categoría'),
              WidgetsComunes.getBoton('ENVIAR'),
            ],
          ),
        ),
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.home_outlined),
            onPressed: () {},
          ),
          title: Text(
            'Nuevo reporte',
            style: GoogleFonts.roboto(
              textStyle: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w400,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _getCampoTexto(String placeholder, Icon icono, bool esContra) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: TextField(
        obscureText: esContra,
        style: GoogleFonts.roboto(
          textStyle: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w400,
            color: Color(0xff000912),
          ),
        ),
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(vertical: 25),
          hintText: placeholder,
          hintStyle: TextStyle(
            color: Color(0xffA6B0BD),
          ),
          fillColor: Colors.white,
          filled: true,
          prefixIcon: icono,
          prefixIconConstraints: BoxConstraints(
            minWidth: 75,
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(50),
            ),
            borderSide: BorderSide(color: Colors.white),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(50),
            ),
            borderSide: BorderSide(color: Colors.white),
          ),
        ),
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(50),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black,
            blurRadius: 25,
            offset: Offset(0, 5),
            spreadRadius: -25,
          ),
        ],
      ),
    );
  }

  Widget _getAreaTexto(String placeholder) {
    return Container(
      child: TextField(
        keyboardType: TextInputType.multiline,
        textInputAction: TextInputAction.newline,
        minLines: 1,
        maxLines: 10,
        style: GoogleFonts.roboto(
          textStyle: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w400,
            color: Color(0xff000912),
          ),
        ),
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(vertical: 25),
          hintText: placeholder,
          hintStyle: TextStyle(
            color: Color(0xffA6B0BD),
          ),
          fillColor: Colors.white,
          filled: true,
          prefixIcon: Icon(Icons.description),
          prefixIconConstraints: BoxConstraints(
            minWidth: 75,
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(50),
            ),
            borderSide: BorderSide(color: Colors.white),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(50),
            ),
            borderSide: BorderSide(color: Colors.white),
          ),
        ),
        onChanged: (valor) {},
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(50),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black,
            blurRadius: 25,
            offset: Offset(0, 5),
            spreadRadius: -25,
          ),
        ],
      ),
    );
  }
}
