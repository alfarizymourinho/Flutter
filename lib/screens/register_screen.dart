import 'dart:convert';

import 'package:flutter_paris/helpers/size_helper.dart';
import 'package:flutter_paris/main.dart';
import 'package:flutter_paris/providers/api.dart';
import 'package:flutter_paris/screens/login_screen.dart';
import 'package:flutter_paris/screens/register_screen.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class RegisterScreen extends StatefulWidget {
  RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final _formKey = GlobalKey<FormState>();
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  // mendeskripsikan variabel input
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  var _isLoading = false;
  bool _isHiddenPassword = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        height: double.infinity,
        width: double.infinity,
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Card(
                  color: Color.fromARGB(255, 60, 147, 147),
                  elevation: 4,
                  margin: EdgeInsets.all(16),
                  shape: RoundedRectangleBorder(
                    side: BorderSide(color: Colors.black),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(24),
                    child: Form(
                      key: _formKey,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Register Page",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 18),
                          TextFormField(
                            controller: nameController,
                            decoration: InputDecoration(
                              hintText: "Nama Lengkap",
                              border: OutlineInputBorder(),
                            ),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Input Nama';
                              }
                              return null;
                            },
                          ),
                          SizedBox(height: 18),
                          TextFormField(
                            controller: emailController,
                            decoration: InputDecoration(
                              hintText: "Email",
                              border: OutlineInputBorder(),
                            ),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Input Email';
                              }
                              return null;
                            },
                          ),
                          SizedBox(height: 18),
                          TextFormField(
                            controller: passwordController,
                            obscureText: _isHiddenPassword,
                            decoration: InputDecoration(
                              hintText: "Password",
                              border: OutlineInputBorder(),
                            ),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Input Password';
                              }
                              return null;
                            },
                          ),
                          SizedBox(height: 18),
                          SizedBox(
                            width: displayWidht(context) * 0.8,
                            height: displayHeight(context) * 0.075,
                            child: ElevatedButton(
                              style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all(Colors.red),
                                shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(24),
                                    side: BorderSide(color: Colors.black),
                                  ),
                                ),
                              ),
                              child: Text(
                                "Register",
                                style: TextStyle(color: Colors.white),
                              ),
                              onPressed: () {
                                _register();
                              },
                            ),
                          ),
                          SizedBox(height: 18),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Sudah punya akun? ",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    new MaterialPageRoute(
                                      builder: (context) => LoginScreen(),
                                    ),
                                  );
                                },
                                child: Text(
                                  'Login',
                                  style: TextStyle(
                                    color: Colors.red,
                                    fontSize: 16.0,
                                    decoration: TextDecoration.none,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

void _register() async {
    final isValid = _formKey.currentState!.validate();
    if (!isValid) {
      return;
    } else {
      _formKey.currentState!.save();
      String name = nameController.text;
      String email = emailController.text;
      String password = passwordController.text;

      setState(() {
        _isLoading = true;
      });

      var data = {
        'name': name,
        'email': email,
        'password': password,
        'role': 'member'
      };

      try {
        var res = await Api().auth(data, '/register');
        var body = json.decode(res.body);

        if (res.statusCode == 200) {
          SharedPreferences localStorage =
              await SharedPreferences.getInstance();
          localStorage.setString('token', json.encode(body['token']));
          localStorage.setString('user', json.encode(body['user']));
          
          // Setelah berhasil mendaftar, Anda dapat menyimpan data ke database di sini
          await saveUserDataToDatabase(name, email, password);

          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => BottomNavigationMenu()),
          );
        } else {
          setState(() {
            _isLoading = false;
          });
        }
      } catch (error) {
        print('Error during registration: $error');
        setState(() {
          _isLoading = false;
        });
      }
    }
  }
}

saveUserDataToDatabase(String name, String email, String password) {
}