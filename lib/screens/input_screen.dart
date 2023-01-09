import 'package:flutter/material.dart';
import 'package:tutorial_flutter/widgets/widgets.dart';

class InputScreen extends StatelessWidget {
  const InputScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();

    final Map<String, String> formValues = {
      'firs_name': 'Marco',
      'last_name': 'Mendoza',
      'email': 'marco@google.com',
      'password': '123456',
      'role': 'admin'
    };

    return Scaffold(
        appBar: AppBar(
          title: const Text('Inputs y Forms'),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Form(
              key: myFormKey,
              child: Column(
                children: [
                  CustomInputField(
                    keyboardType: TextInputType.text,
                    labelText: 'Nombre',
                    hintText: 'Nombre de Usuario',
                    formProperty: 'firs_name',
                    formValues: formValues,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  CustomInputField(
                    keyboardType: TextInputType.text,
                    labelText: 'Apellido',
                    hintText: 'Apellido de Usuario',
                    formProperty: 'last_name',
                    formValues: formValues,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  CustomInputField(
                    keyboardType: TextInputType.emailAddress,
                    labelText: 'Correo',
                    hintText: 'Correo de Usuario',
                    formProperty: 'email',
                    formValues: formValues,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  CustomInputField(
                    obscureText: true,
                    labelText: 'Password',
                    hintText: 'Password de Usuario',
                    formProperty: 'password',
                    formValues: formValues,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  DropdownButtonFormField(
                    value: 'Admin',
                    items: const [
                      DropdownMenuItem(
                        value: 'Admin',
                        child: Text('Admin'),
                      ),
                      DropdownMenuItem(
                        value: 'User',
                        child: Text('Usuario'),
                      ),
                      DropdownMenuItem(
                        value: 'Guess',
                        child: Text('Invitado'),
                      ),
                    ],
                    onChanged: (value) {
                      formValues['role'] = value ?? 'Admin';
                    },
                  ),
                  ElevatedButton(
                    child: const SizedBox(
                      width: double.infinity,
                      child: Center(
                        child: Text('Guardar'),
                      ),
                    ),
                    onPressed: () {
                      FocusScope.of(context).requestFocus(FocusNode());
                      if (!myFormKey.currentState!.validate()) {
                        print('Formulario no valido');
                        return;
                      }
                      print(formValues);
                    },
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
