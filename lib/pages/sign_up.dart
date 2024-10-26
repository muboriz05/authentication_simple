import 'package:flutter/material.dart';
import 'package:flutter_application21/pages/sign_in.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:icons_plus/icons_plus.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _usernameController = TextEditingController();

  bool _isPasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 100),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Sign Up',
                style: TextStyle(fontSize: 27, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 30,
              ),
              TextFormField(
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter username';
                  }

                  if (!RegExp(r'^[a-zA-Z0-9]+$').hasMatch(value)) {
                    return 'Please enter valid username';
                  }
                  return null;
                },
                keyboardType: TextInputType.name,
                controller: _usernameController,
                decoration: const InputDecoration(
                  contentPadding:
                      EdgeInsets.only(left: 30, top: 27, bottom: 27),
                  hintText: 'Username',
                  prefixIcon: Padding(
                    padding: EdgeInsets.only(left: 15, top: 10, right: 15),
                    child: FaIcon(FontAwesomeIcons.solidCircleUser, size: 25),
                  ),
                  filled: true,
                  fillColor: Colors.white38,
                  prefixIconColor: Colors.grey,
                  hintStyle: TextStyle(fontSize: 16, color: Colors.grey),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.grey,
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.grey,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                controller: _emailController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter email';
                  }

                  if (!RegExp(r'\S+@\S+\.\S+').hasMatch(value)) {
                    return 'Please enter valid email';
                  }
                  return null;
                },
                decoration: const InputDecoration(
                  filled: true,
                  fillColor: Colors.white38,
                  contentPadding:
                      EdgeInsets.only(left: 30, top: 27, bottom: 27),
                  hintText: 'Email',
                  prefixIcon: Padding(
                    padding: EdgeInsets.only(left: 15, top: 10, right: 15),
                    child: FaIcon(FontAwesomeIcons.solidEnvelope, size: 25),
                  ),
                  prefixIconColor: Colors.grey,
                  hintStyle: TextStyle(fontSize: 16, color: Colors.grey),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.grey,
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.grey,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: _passwordController,
                keyboardType: TextInputType.visiblePassword,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter password';
                  }
                  if (value.length < 8) {
                    return 'Password must be at least 8 characters';
                  }
                  return null;
                },
                obscureText: !_isPasswordVisible,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white38,
                  contentPadding:
                      const EdgeInsets.only(left: 30, top: 15, bottom: 15),
                  hintText: 'Password',
                  prefixIcon: const Padding(
                    padding: EdgeInsets.only(left: 15, top: 10, right: 15),
                    child: FaIcon(FontAwesomeIcons.lock, size: 25),
                  ),
                  suffixIcon: Padding(
                    padding: const EdgeInsets.only(
                        left: 15, top: 15, right: 15, bottom: 15),
                    child: IconButton(
                      onPressed: () {
                        setState(() {
                          _isPasswordVisible = !_isPasswordVisible;
                        });
                      },
                      icon: FaIcon(
                        _isPasswordVisible
                            ? FontAwesomeIcons.eye
                            : FontAwesomeIcons.eyeSlash,
                        size: 18,
                      ),
                    ),
                  ),
                  suffixIconColor: Colors.grey,
                  prefixIconColor: Colors.grey,
                  hintStyle: const TextStyle(fontSize: 16, color: Colors.grey),
                  focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.grey,
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                  ),
                  border: const OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.grey,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                width: double.infinity,
                height: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  color: Colors.blue,
                ),
                child: TextButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      print('Username: ${_usernameController.text}');
                      print('Email: ${_emailController.text}');
                      print('Password: ${_passwordController.text}');
                    }
                  },
                  child: const Text('Sign Up',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold)),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(child: Divider()),
                  Padding(
                    padding: EdgeInsets.only(left: 15, right: 15),
                    child: Text(
                      'or Sign Up with',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Expanded(child: Divider()),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: const EdgeInsets.only(right: 15),
                    padding: const EdgeInsets.all(15),
                    width: 110,
                    height: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(
                        color: Colors.grey,
                        width: 1.0,
                      ),
                    ),
                    child: Brand(
                      Brands.google,
                    ),
                  ),
                  Container(
                      margin: const EdgeInsets.only(right: 15),
                      padding: const EdgeInsets.all(15),
                      width: 110,
                      height: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(
                          color: Colors.grey,
                          width: 1.0,
                        ),
                      ),
                      child: const Icon(
                        BoxIcons.bxl_apple,
                        size: 30,
                      )),
                  Container(
                    padding: const EdgeInsets.all(15),
                    width: 110,
                    height: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(
                        color: Colors.grey,
                        width: 1.0,
                      ),
                    ),
                    child: Brand(
                      Brands.facebook,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Already have an account?'),
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const SignIn(),
                      ));
                    },
                    child: const Text(
                      'Sign In',
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 14,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
