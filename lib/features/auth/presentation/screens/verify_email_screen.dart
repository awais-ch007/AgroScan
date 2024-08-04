// ignore_for_file: prefer_const_constructors, use_build_context_synchronously

import 'package:facebook_clone/features/ui/root_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '/core/constants/constants.dart';

import '/core/utils/utils.dart';

import '/features/auth/providers/auth_provider.dart';

class VerifyEmailScreen extends ConsumerWidget {
  const VerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Padding(
        padding: Constants.defaultPadding,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () async {
                await ref.read(authProvider).verifyEmail().then((value) {
                  if (value == null) {
                    showToastMessage(
                        text: 'Email verification sent to your email');
                  }
                });
              },
              child: Container(
                width: size.width,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 21, 66, 42),
                  borderRadius: BorderRadius.circular(10),
                ),
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                child: const Center(
                  child: Text(
                    'Verify Email',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            // RoundButton(
            //   onPressed: () async {
            //     await FirebaseAuth.instance.currentUser!.reload();
            //     final emailVerified =
            //         FirebaseAuth.instance.currentUser?.emailVerified;
            //     if (emailVerified == true) {
            //       // Fix this later
            //       Navigator.of(context).pushNamed(HomeScreen.routeName);
            //     }
            //   },
            //   label: 'Refresh',
            // ),

            GestureDetector(
              onTap: () async {
                await FirebaseAuth.instance.currentUser!.reload();
                final emailVerified =
                    FirebaseAuth.instance.currentUser?.emailVerified;
                if (emailVerified == true) {
                  // Fix this later
                  Navigator.of(context).pushNamed(RootPage.routeName);
                }
              },
              child: Container(
                width: size.width,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 21, 66, 42),
                  borderRadius: BorderRadius.circular(10),
                ),
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                child: const Center(
                  child: Text(
                    'Refresh',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            // RoundButton(
            //   onPressed: () {
            //     ref.read(authProvider).signOut();
            //   },
            //   label: 'Change Email',
            // ),
            GestureDetector(
              onTap: () {
                ref.read(authProvider).signOut();
              },
              child: Container(
                width: size.width,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 21, 66, 42),
                  borderRadius: BorderRadius.circular(10),
                ),
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                child: const Center(
                  child: Text(
                    'Change Email',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
