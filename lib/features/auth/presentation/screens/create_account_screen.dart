// ignore_for_file: prefer_const_constructors

import 'dart:io';

import 'package:facebook_clone/core/constants/app_colors.dart';
import 'package:facebook_clone/core/constants/constants.dart';
import 'package:facebook_clone/core/utils/utils.dart';
import 'package:facebook_clone/core/widgets/pick_image_widget.dart';

import 'package:facebook_clone/core/widgets/round_text_field.dart';
import 'package:facebook_clone/features/auth/presentation/screens/login_screen.dart';

import 'package:page_transition/page_transition.dart';
import 'package:facebook_clone/features/auth/providers/auth_provider.dart';
import 'package:facebook_clone/features/auth/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'verify_email_screen.dart';

final _formKey = GlobalKey<FormState>();

class CreateAccountScreen extends ConsumerStatefulWidget {
  const CreateAccountScreen({super.key});

  static const routeName = '/create-account';

  @override
  ConsumerState<CreateAccountScreen> createState() =>
      _CreateAccountScreenState();
}

class _CreateAccountScreenState extends ConsumerState<CreateAccountScreen> {
  File? image;

  bool isLoading = false;

  // controllers
  late final TextEditingController _userNameController;

  late final TextEditingController _emailController;
  late final TextEditingController _passwordController;

  @override
  void initState() {
    _userNameController = TextEditingController();

    _emailController = TextEditingController();
    _passwordController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _userNameController.dispose();

    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  Future<void> createAccount() async {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      setState(() => isLoading = true);
      await ref
          .read(authProvider)
          .createAccount(
            fullName: _userNameController.text,
            email: _emailController.text,
            password: _passwordController.text,
            image: image,
          )
          .then((credential) {
        if (!credential!.user!.emailVerified) {
          Navigator.of(context).canPop();
          Navigator.pushReplacement(
            context,
            PageTransition(
              child: VerifyEmailScreen(),
              type: PageTransitionType.bottomToTop,
            ),
          );
        }
      }).catchError((_) {
        setState(() => isLoading = false);
      });
      setState(() => isLoading = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double height = size.height;

    return Scaffold(
      backgroundColor: AppColors.realWhiteColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: Constants.defaultPadding,
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                Image.asset(
                  'assets/icons/signup.png',
                  height: height * 0.30,
                ),

                SizedBox(
                  height: height * 0.0050,
                ),
                Text(
                  'Sign Up',
                  style: TextStyle(
                    fontSize: height * 0.055,
                    fontWeight: FontWeight.w700,
                  ),
                  textAlign: TextAlign.left,
                ),
                SizedBox(
                  height: height * 0.0050,
                ),
                GestureDetector(
                  onTap: () async {
                    image = await pickImage();
                    setState(() {});
                  },
                  child: PickImageWidget(image: image),
                ),
                SizedBox(height: height * 0.008),
                Row(
                  children: [
                    // First Name Text Field
                    Expanded(
                      child: RoundTextField(
                        controller: _userNameController,
                        hintText: 'Full name',
                        textInputAction: TextInputAction.next,
                        icon: Icons.person_2_rounded,
                        validator: validateName,
                      ),
                    ),
                  ],
                ),

                SizedBox(height: height * 0.004),
                // Phone number / email text field
                RoundTextField(
                  controller: _emailController,
                  hintText: 'Email',
                  textInputAction: TextInputAction.next,
                  icon: Icons.alternate_email,
                  keyboardType: TextInputType.emailAddress,
                  validator: validateEmail,
                ),
                SizedBox(height: height * 0.004),
                // Password Text Field
                RoundTextField(
                  controller: _passwordController,
                  hintText: 'Password',
                  textInputAction: TextInputAction.done,
                  icon: Icons.lock,
                  keyboardType: TextInputType.visiblePassword,
                  validator: validatePassword,
                  isPassword: true,
                ),
                SizedBox(height: height * 0.004),
                isLoading
                    ? const Center(child: CircularProgressIndicator())
                    : GestureDetector(
                        onTap: createAccount,
                        child: Container(
                          width: size.width,
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 21, 66, 42),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 20),
                          child: const Center(
                            child: Text(
                              'Sign Up',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18.0,
                              ),
                            ),
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
                        style: TextStyle(
                          color: Colors.black54,
                          fontSize: height * 0.02,
                        ),
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
                            child: const LoginScreen(),
                            type: PageTransitionType.bottomToTop));
                  },
                  child: Center(
                    child: Text.rich(
                      TextSpan(children: [
                        TextSpan(
                          text: 'Have an Account? ',
                          style: TextStyle(
                            color: Colors.black54,
                            fontSize: height * 0.02,
                          ),
                        ),
                        TextSpan(
                          text: 'Login',
                          style: TextStyle(
                            color: Color.fromARGB(255, 21, 66, 42),
                            fontSize: height * 0.02,
                          ),
                        ),
                      ]),
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
}
