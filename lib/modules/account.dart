import 'package:flutter/material.dart';
import 'package:leraning_b_app/kernel/colors/colors_app.dart';
import 'package:leraning_b_app/kernel/validations/validations.dart';

class Account extends StatefulWidget {
  const Account({super.key});

  @override
  State<Account> createState() => _AccountState();
}

class _AccountState extends State<Account> {
  final _formKey = GlobalKey<FormState>();
  bool _isButtonDisabled = true;
  bool _passwordVisible = false;
  final TextEditingController _email = TextEditingController(text: '');
  final TextEditingController _pass = TextEditingController(text: '');
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
                      Container(
                        padding: const EdgeInsets.symmetric(vertical: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            const Text("o "),
                            InkWell(
                              onTap: () => Navigator.pushReplacementNamed(
                                  context, '/register'),
                              child: const Text(
                                '¿aún no te has registrado?',
                                style: TextStyle(
                                  color: ColorsApp.secondaryColor,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.only(top: 16),
                        child: ElevatedButton(
                            onPressed: _isButtonDisabled
                                ? null
                                : () => Navigator.pushReplacementNamed(
                                    context, '/profile'),
                            child: const Text('Iniciar sesión')),
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
