import 'package:app_componentes/src/widgets/widgets.dart';
import 'package:flutter/material.dart';

class InputScreen extends StatelessWidget {
  const InputScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Inputs'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            children: const [
              CustomInputField(
                labelText: 'Nombre',
                hintText: 'Nombre del usuario',
              ),
              SizedBox(height: 30),
              CustomInputField(
                labelText: 'Apellido',
                hintText: 'Apellido del usuario',
              ),
              SizedBox(height: 30),
              CustomInputField(
                labelText: 'Correo',
                hintText: 'Correo del usuario',
                keyboardType: TextInputType.emailAddress,
              ),
              SizedBox(height: 30),
              CustomInputField(
                labelText: 'Contraseña',
                hintText: 'contraseña del usuario',
                keyboardType: TextInputType.emailAddress,
                obscureText: true,
              ),
              SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}
