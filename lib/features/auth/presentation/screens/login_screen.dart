// ignore_for_file: prefer_const_constructors, unused_import

import 'package:facebook_clone/features/auth/presentation/screens/create_account_screen.dart';
import 'package:facebook_clone/features/auth/presentation/screens/expert_login.dart';
import 'package:facebook_clone/features/auth/presentation/screens/verify_email_screen.dart';
import 'package:facebook_clone/features/auth/providers/auth_provider.dart';
import 'package:facebook_clone/features/ui/screens/forgot_password.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:page_transition/page_transition.dart';
import '../../../ui/root_page.dart';
import '/core/constants/constants.dart';

import '/core/widgets/round_text_field.dart';
import '/features/auth/utils/utils.dart';

// ignore: unused_element

class LoginScreen extends ConsumerStatefulWidget {
  const LoginScreen({super.key});

  @override
  ConsumerState<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends ConsumerState<LoginScreen> {
  late final TextEditingController _emailController;
  late final TextEditingController _passwordController;

  bool isLoading = false;

  @override
  void initState() {
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  // Future<void> login() async {
  //   if (_formKey.currentState!.validate()) {
  //     _formKey.currentState!.save();
  //     setState(() => isLoading = true);
  //     await ref.read(authProvider).signIn(
  //           email: _emailController.text,
  //           password: _passwordController.text,
  //         );

  //     setState(() => isLoading = false);
  //   }
  // }
  final _formKey = GlobalKey<FormState>();
  Future<void> login() async {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      setState(() => isLoading = true);
      try {
        await ref.read(authProvider).signIn(
              email: _emailController.text,
              password: _passwordController.text,
            );
        setState(() => isLoading = false);
      } on Exception {
        // ignore: use_build_context_synchronously
        showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              title: Text('Error'),
              content: Text('Invalid email or password! '),
              actions: [
                TextButton(
                  child: Text('OK'),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ],
            );
          },
        );
        setState(() => isLoading = false);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double height = size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: Constants.defaultPadding,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                'assets/icons/signin.png',
                height: height * 0.40,
              ),
              Text(
                'Sign In',
                style: TextStyle(
                  fontSize: height * 0.040,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(
                height: height * 0.008,
              ),
              Form(
                key: _formKey,
                child: Column(
                  children: [
                    RoundTextField(
                      controller: _emailController,
                      hintText: 'Email',
                      keyboardType: TextInputType.emailAddress,
                      textInputAction: TextInputAction.next,
                      icon: Icons.alternate_email,
                      validator: validateEmail,
                    ),
                    SizedBox(height: height * 0.008),
                    RoundTextField(
                      controller: _passwordController,
                      hintText: 'Password',
                      keyboardType: TextInputType.visiblePassword,
                      textInputAction: TextInputAction.done,
                      icon: Icons.lock,
                      isPassword: true,
                      validator: validatePassword,
                    ),
                    SizedBox(height: height * 0.008),
                    GestureDetector(
                      onTap: login,
                      child: Container(
                        width: size.width,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 21, 66, 42),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 20),
                        child: Center(
                          child: Text(
                            'Log In',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: height * 0.022,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: height * 0.008),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushReplacement(
                            context,
                            PageTransition(
                                child: const ForgotPassword(),
                                type: PageTransitionType.bottomToTop));
                      },
                      child: Center(
                        child: Text.rich(
                          TextSpan(children: [
                            TextSpan(
                              text: 'Forgot Password? ',
                              style: TextStyle(
                                color: Colors.black54,
                                fontSize: height * 0.02,
                              ),
                            ),
                            TextSpan(
                              text: 'Reset Here',
                              style: TextStyle(
                                color: Color.fromARGB(255, 21, 66, 42),
                                fontSize: height * 0.02,
                              ),
                            ),
                          ]),
                        ),
                      ),
                    ),
                    SizedBox(height: height * 0.026),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushReplacement(
                            context,
                            PageTransition(
                                child: const ExpertLogin(),
                                type: PageTransitionType.bottomToTop));
                      },
                      child: Center(
                        child: Text.rich(
                          TextSpan(children: [
                            TextSpan(
                              text: 'Expert? ',
                              style: TextStyle(
                                color: Colors.black54,
                                fontSize: height * 0.02,
                              ),
                            ),
                            TextSpan(
                              text: 'Click Here',
                              style: TextStyle(
                                color: Color.fromARGB(255, 21, 66, 42),
                                fontSize: height * 0.02,
                              ),
                            ),
                          ]),
                        ),
                      ),
                    ),
                    SizedBox(height: height * 0.008),
                    Row(
                      children: [
                        Expanded(child: Divider()),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: Text(
                            'OR',
                            style: TextStyle(fontSize: height * 0.02),
                          ),
                        ),
                        Expanded(child: Divider()),
                      ],
                    ),
                    SizedBox(height: height * 0.008),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushReplacement(
                            context,
                            PageTransition(
                                child: CreateAccountScreen(),
                                type: PageTransitionType.bottomToTop));
                      },
                      child: Center(
                        child: Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(
                                text: 'New to AgroScan? ',
                                style: TextStyle(
                                  color: Colors.black54,
                                  fontSize: height * 0.02,
                                ),
                              ),
                              TextSpan(
                                text: 'Register',
                                style: TextStyle(
                                  color: Color.fromARGB(255, 21, 66, 42),
                                  fontSize: height * 0.02,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
