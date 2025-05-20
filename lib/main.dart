import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    var scaffold = Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Login Page'),
        backgroundColor: const Color.fromARGB(255, 247, 202, 1),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(bottom: 17),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(Icons.person, size: 50, color: const Color.fromARGB(255, 248, 171, 5)),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Form(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      TextFormField(
                        decoration: InputDecoration(
                          labelText: 'Email',
                          hintText: "@gmail.com",
                          border: OutlineInputBorder(),
                        ),
                      ),
                    const SizedBox(height: 12),
                    PasswordField(),
                    const SizedBox(height: 12),
                  ElevatedButton(
                    onPressed: () {
                      // Add your login logic here
                    },
                    child: const Text('Login'),
                  ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );

    return MaterialApp(debugShowCheckedModeBanner: false, home: scaffold);
  }
}

class PasswordField extends StatefulWidget {
  const PasswordField({super.key});

  @override
  State<PasswordField> createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  bool _obscureText = true;

  void _toggle() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: _obscureText,
      decoration: InputDecoration(
        labelText: 'Password',
        border: const OutlineInputBorder(),
        suffixIcon: IconButton(
          icon: Icon(_obscureText ? Icons.visibility_off : Icons.visibility),
          onPressed: _toggle,
        ),
      ),
    );
  }
}
