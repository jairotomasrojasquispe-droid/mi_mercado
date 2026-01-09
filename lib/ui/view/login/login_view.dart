import 'package:flutter/material.dart';
import 'package:mi_mercado/components/widgets/bottom_iniciar_sesion.dart';
import 'package:mi_mercado/components/widgets/bottom_tool_bar.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Center(
            child: Container(
              height: 414,
              width: double.infinity,
              //decoration: BoxDecoration(color: Colors.black),
            ),
          ),
          Container(
            //decoration: BoxDecoration(color: Colors.red),
            padding: EdgeInsets.only(left: 15, right: 15),
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.only(top: 20, right: 100),
                  child: Text(
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                    "Inicia sesion o crea una cuenta",
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 5, top: 5),
                  child: Text(
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.normal,
                      color: Colors.black,
                    ),
                    "elige una de las siguientes opciones para continuar o crea una cuenta nueva",
                  ),
                ),
                SizedBox(height: 20),

                BottomIniciarSesion(
                  text: "inicia sesión",
                  textColor: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  backgroundColor: const Color.fromARGB(255, 108, 73, 163),
                  borderRadius: BorderRadius.circular(15),
                ),

                SizedBox(height: 20),

                BottomIniciarSesion(
                  text: "Crea tu cuenta",
                  textColor: const Color.fromARGB(255, 108, 73, 163),
                  backgroundColor: Colors.white,
                  fontSize: 18,
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(
                    color: const Color.fromARGB(255, 108, 73, 163),
                    width: 1.3,
                  ),
                ),
                SizedBox(height: 15),
                BottomIniciarSesion(
                  text:
                      "Al iniciar sesión o crear una cuenta, aceptas nuestros términos y condiciones y la Política de privacidad",
                  textColor: Colors.black,
                  backgroundColor: const Color.fromRGBO(244, 250, 252, 1),
                  fontSize: 12,
                  fontWeight: FontWeight.w200,
                  borderRadius: BorderRadius.circular(15),
                  padding: EdgeInsets.only(left: 20),
                ),
                SizedBox(height: 40),
              ],
            ),
          ),
          BottomToolBar(),
        ],
      ),
    );
  }
}
