import 'package:flutter/material.dart';

import 'package:eltacoloco/ui/colors.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        crear_fondo(context),
        login_form(context),
      ],
    ));
  }
}

Widget login_form(BuildContext context) {
  final size = MediaQuery.of(context).size;
  return SingleChildScrollView(
    child: Column(
      children: [
        SafeArea(
            child: Container(
          height: 200,
        )),
        Container(
          width: size.width * 0.85,
          padding: EdgeInsets.symmetric(vertical: 50),
          margin: EdgeInsets.symmetric(vertical: 30),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(5.0),
              boxShadow: const [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 3.0,
                  offset: Offset(0.0, 5.0),
                  spreadRadius: 3.0,
                )
              ]),
          child: Column(
            children: [
              Text('Iniciar seccion', style: TextStyle(fontSize: 20, color: lightColorScheme.tertiary),),
              SizedBox(height: 50,),
              email(),
              SizedBox(height: 30,),
              password(),
              SizedBox(height: 40),
              botonIngresar(),
            ],
          ),
        ),
        Text('Olvido su contraseña?', style: TextStyle(color: lightColorScheme.tertiary, fontSize: 18),)
      ],
    ),
  );
}

Widget email () {
  return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: TextField(
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
            icon: Icon(
              Icons.alternate_email, color: lightColorScheme.tertiary,),
            labelText: 'Correo electronico'
        ),
      )
  );
}

Widget password () {
  return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: TextField(
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
            icon: Icon(Icons.lock_clock_outlined, color: lightColorScheme.tertiary,),
            labelText: 'Contraseña'
        ),
      )
  );
}

Widget botonIngresar(){
  return ElevatedButton(
    onPressed:(){},
    child: Container(
      padding: EdgeInsets.symmetric(horizontal: 80, vertical: 15.0),
      child: Text('Ingresar', style: TextStyle(color: lightColorScheme.tertiary),),),
    );
}

Widget crear_fondo(BuildContext context) {
  final size = MediaQuery.of(context).size;

  final fondo_color = Container(
      height: size.height * 0.4,
      width: double.infinity,
      decoration: BoxDecoration(
        color: lightColorScheme.surfaceTint,
      ));

  final circulo = Container(
    width: 90,
    height: 90,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(90),
        color: Color.fromRGBO(255, 255, 255, 0.3)),
  );

  return Stack(
    children: [
      fondo_color,
      Positioned(child: circulo, top: 90.0, left: 20.0),
      Positioned(child: circulo, top: -40.0, right: -30.0),
      Positioned(child: circulo, bottom: -50.0, right: -10.0),
      Container(
        padding: EdgeInsets.only(top: 80),
        child: Column(
          children: const [
            Icon(
              Icons.person_pin_circle,
              color: Colors.white,
              size: 100.0,
            ),
            SizedBox(
              height: 10.0,
              width: double.infinity,
            ),
            Text(
              'Usuario',
              style: TextStyle(color: Colors.white, fontSize: 25),
            )
          ],
        ),
      )
    ],
  );
}
