import 'package:flutter/material.dart';
import 'package:leraning_b_app/kernel/validations/validations.dart';

class FirstForm extends StatefulWidget {
  const FirstForm({super.key});

  @override
  State<FirstForm> createState() => _FirstFormState();
}

class _FirstFormState extends State<FirstForm> {
  final _formKey = GlobalKey<FormState>();
  bool _isButtonDisabled = true;
  final TextEditingController _fullName = TextEditingController(text: '');
  final TextEditingController _age = TextEditingController(text: '');
  final TextEditingController _email = TextEditingController(text: '');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Form(
              key: _formKey,
              onChanged: () {
                setState(() {
                  _isButtonDisabled = !_formKey.currentState!.validate();
                });
              },
              child: Container(
                padding: const EdgeInsets.all(16),
                child: Column(children: <Container>[
                  Container(
                    margin: const EdgeInsets.only(bottom: 16),
                    child: TextFormField(
                      decoration: const InputDecoration(
                          labelText: 'Nombre completo*',
                          hintText: 'Diego Villalobos'),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Campo obligatorio';
                        } else {
                          return null;
                        }
                      },
                      keyboardType: TextInputType.name,
                      controller: _fullName,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(bottom: 16),
                    child: TextFormField(
                      decoration: const InputDecoration(
                          labelText: 'Email*', hintText: 'email.com'),
                      validator: (value) {
                        RegExp regex = RegExp(Validations.email);
                        if (value == null || value.isEmpty) {
                          return 'campo obligatorio';
                        } else if (!regex.hasMatch(value)) {
                          return 'Introduce un correo válido';
                        }
                        return null;
                      },
                      keyboardType: TextInputType.emailAddress,
                      controller: _email,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(bottom: 16),
                    child: TextFormField(
                      decoration: const InputDecoration(
                          labelText: 'Edad*', hintText: '22'),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Campo obligatorio';
                        } else {
                          return null;
                        }
                      },
                      keyboardType: TextInputType.number,
                      controller: _age,
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(bottom: 16),
                    child: ElevatedButton(
                        onPressed: _isButtonDisabled
                            ? null
                            : () {
                                print(
                                    '${_fullName.text} ${_email.value} ${_age.value}');
                              },
                        child: const Text('Registrar')),
                  )
                ]),
              )),
        ),
      ),
    );
  }
}
