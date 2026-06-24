import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Vazir',
      ),
      home: const LoginPage(),
    );
  }
}


class LoginPage extends StatefulWidget {
  const LoginPage({super.key});


  @override
  State<LoginPage> createState() => _LoginPageState();
}


class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();


  TextEditingController usernameController =
      TextEditingController();


  TextEditingController passwordController =
      TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xff833AB4),
              Color(0xffFD1D1D),
              Color(0xffFCAF45),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Form(
                key: _formKey,
                child: Column(
                  children: [
                    const Icon(
                      Icons.camera_alt,
                      size: 90,
                      color: Colors.white,
                    ),


                    const SizedBox(height: 10),


                    const Text(
                      "Instagram",
                      style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontFamily: 'Vazir',
                      ),
                    ),


                    const SizedBox(height: 40),


                    TextFormField(
                      controller: usernameController,
                      decoration: InputDecoration(
                        hintText:
                            'شماره تلفن، نام کاربری یا ایمیل',
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                          borderRadius:
                              BorderRadius.circular(10),
                        ),
                      ),
                      validator: (value) {
                        if (value == null ||
                            value.isEmpty) {
                          return 'نام کاربری نمی تواند خالی باشد';
                        }
                        return null;
                      },
                    ),


                    const SizedBox(height: 15),


                    TextFormField(
                      controller: passwordController,
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: 'رمز عبور',
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                          borderRadius:
                              BorderRadius.circular(10),
                        ),
                      ),
                      validator: (value) {
                        if (value == null ||
                            value.isEmpty) {
                          return 'رمز عبور نمی تواند خالی باشد';
                        }


                        if (value.length < 10) {
                          return 'رمز عبور باید حداقل 10 کاراکتر باشد';
                        }


                        return null;
                      },
                    ),


                    const SizedBox(height: 10),


                    const Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        'رمز عبور را فراموش کرده اید؟',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),


                    const SizedBox(height: 20),


                    SizedBox(
                      width: double.infinity,
                      height: 50,
                      child: ElevatedButton(
                        onPressed: () {
                          if (_formKey.currentState!
                              .validate()) {
                            ScaffoldMessenger.of(context)
                                .showSnackBar(
                              const SnackBar(
                                content: Text(
                                    'ورود با موفقیت انجام شد'),
                              ),
                            );
                          }
                        },
                        child: const Text(
                          'ورود',
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),


                    const SizedBox(height: 25),


                    const Row(
                      children: [
                        Expanded(
                          child: Divider(
                            color: Colors.white,
                          ),
                        ),
                        Padding(
                          padding:
                              EdgeInsets.symmetric(horizontal: 10),
                          child: Text(
                            'یا',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Divider(
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),


                    const SizedBox(height: 25),


                    const Row(
                      mainAxisAlignment:
                          MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.facebook,
                          color: Colors.white,
                        ),
                        SizedBox(width: 10),
                        Text(
                          'ورود با فیسبوک',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),


                    const SizedBox(height: 80),


                    const Text(
                      'حساب کاربری ندارید؟ ثبت نام کنید',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}