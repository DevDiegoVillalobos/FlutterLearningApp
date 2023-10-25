import 'package:flutter/material.dart';
import 'package:leraning_b_app/kernel/colors/colors_app.dart';
import 'package:leraning_b_app/kernel/validations/validations.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final _formKey = GlobalKey<FormState>();
  bool _isButtonDisabled = true;
  bool _passwordVisible = false;
  bool _password2Visible = false;
  final TextEditingController _email = TextEditingController(text: '');
  final TextEditingController _pass = TextEditingController(text: '');
  final TextEditingController _pass2 = TextEditingController(text: '');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Perfil'),
          backgroundColor: ColorsApp.primayColor,
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: const Center(
                    child: Text('Registrar'),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(bottom: 16),
                  child: Center(
                      child: Image.asset('assets/images/logo_utez.png',
                          width: 200, height: 150)),
                ),
                Container(
                  padding: const EdgeInsets.only(bottom: 16),
                  child: Form(
                    key: _formKey,
                    onChanged: () {
                      setState(() {
                        _isButtonDisabled = !_formKey.currentState!.validate();
                      });
                    },
                    child: Column(children: <Widget>[
                      TextFormField(
                        decoration: const InputDecoration(
                            labelText: 'Correo electrónico*',
                            hintText: 'example@gmail.com'),
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
                      TextFormField(
                        obscureText:
                            !_passwordVisible, //This will obscure text dynamically
                        decoration: InputDecoration(
                          labelText: 'Contraseña',
                          hintText: '*****',
                          suffixIcon: IconButton(
                            icon: Icon(
                              // Based on passwordVisible state choose the icon
                              _passwordVisible
                                  ? Icons.visibility
                                  : Icons.visibility_off,
                              color: Theme.of(context).primaryColorDark,
                            ),
                            onPressed: () {
                              // Update the state i.e. toogle the state of passwordVisible variable
                              setState(() {
                                _passwordVisible = !_passwordVisible;
                              });
                            },
                          ),
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Campo obligatorio';
                          } else {
                            return null;
                          }
                        },
                        keyboardType: TextInputType.text,
                        controller: _pass,
                      ),
                      TextFormField(
                        obscureText: !_password2Visible,
                        decoration: InputDecoration(
                          labelText: 'Confirmar Contraseña',
                          hintText: '*****',
                          suffixIcon: IconButton(
                            icon: Icon(
                              _password2Visible
                                  ? Icons.visibility
                                  : Icons.visibility_off,
                              color: Theme.of(context).primaryColorDark,
                            ),
                            onPressed: () {
                              // Update the state i.e. toogle the state of passwordVisible variable
                              setState(() {
                                _password2Visible = !_password2Visible;
                              });
                            },
                          ),
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Campo obligatorio';
                          } else {
                            return null;
                          }
                        },
                        keyboardType: TextInputType.text,
                        controller: _pass2,
                      ),
                      Container(
                        padding: const EdgeInsets.only(top: 16),
                        child: ElevatedButton(
                            onPressed: _isButtonDisabled
                                ? null
                                : () => Navigator.pushReplacementNamed(
                                    context, '/account'),
                            child: const Text('Registrar')),
                      )
                    ]),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
