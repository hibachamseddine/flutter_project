import 'package:flutter/material.dart';
import 'package:my_flutter_project/presentation/widgets/loginform.widget.dart';


class Login extends StatelessWidget {
  const Login({super.key});

  @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          elevation: 15,
          backgroundColor: Colors.purpleAccent,
          title: const Text("Login"),
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.person_2_outlined),
          ),
            ),
        body: const Loginform(),
    );
  }
}
