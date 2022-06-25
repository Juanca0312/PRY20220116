import 'package:flutter/material.dart';
import 'package:pry20220116/widgets/input_with_help.dart';
import 'package:pry20220116/widgets/primary_button.dart';
import 'package:pry20220116/widgets/with_tooltip.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 30),
        child: Column(
          children: [
            WithTooltip(
                child: Text('BIENVENIDO',
                    style: Theme.of(context).textTheme.headline1),
                tooltipMessage: 'Ayuda'),
            const SizedBox(
              height: 40.00,
            ),
            Form(
              key: _formKey,
              child: Column(
                children: const [
                  // Add TextFormFields and ElevatedButton here.
                  InputWithHelp(
                      placeholder: 'DNI', tooltipMessage: 'Ayuda'),
                  InputWithHelp(
                      placeholder: 'FECHA DE EMISION', tooltipMessage: 'Ayuda'),
                  SizedBox(height: 70,),
                  WithTooltip(child: PrimaryButton(text: 'Ingresar'), tooltipMessage: 'Ayuda')
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
