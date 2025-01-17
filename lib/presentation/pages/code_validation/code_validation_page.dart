import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../code_validation/code_validation_controller.dart';

class CodeValidationPage extends GetView<CodeValidationController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        SizedBox.expand(
          child: Image.asset(
            'assets/images/rick-and-morty-background.webp',
            fit: BoxFit.cover,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 200, left: 35, right: 35),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                '¡Bienvenido a la app de Rick and Morty!',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                  color: Color.fromRGBO(0, 181, 204, 1),
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20),
              Text(
                'Explora el universo de esta icónica serie y descubre a todos sus personajes, desde los más queridos hasta los más extravagantes.',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Color.fromRGBO(178, 223, 40, 1),
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 50),
              Stack(children: [
                Image.asset(
                  'assets/images/rick-and-morty-1.png',
                  fit: BoxFit.cover,
                ),
                Column(
                  children: [
                    SizedBox(height: 120),
                    Text(
                      '🔑 Para comenzar',
                      style: TextStyle(
                        fontSize: 14,
                        color: Color.fromRGBO(187, 222, 240, 1),
                      ),
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      ' Ingresa tu código de acceso',
                      style: TextStyle(
                        fontSize: 14,
                        color: Color.fromRGBO(187, 222, 240, 1),
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 20),
                    TextField(
                      controller: controller.codeController,
                      decoration: InputDecoration(
                        hintText: 'código',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0),
                          borderSide: BorderSide(
                            color: Color.fromRGBO(187, 222, 240, 1),
                            width: 2.0,
                          ),
                        ),
                        hoverColor: Color.fromRGBO(187, 222, 240, 1),
                        fillColor: Color.fromRGBO(187, 222, 240, 0.5),
                        filled: true,
                        suffixIcon: IconButton(
                          onPressed: controller.validateCode,
                          icon: Icon(
                            Icons.send,
                            color: Color.fromRGBO(178, 223, 40, 1),
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ]),
            ],
          ),
        ),
      ]),
    );
  }
}
