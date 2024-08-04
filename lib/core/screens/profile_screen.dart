import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../features/chat/presentation/screens/chat_screen.dart';

import '/core/constants/app_colors.dart';
import '/core/constants/constants.dart';

import '/core/screens/error_screen.dart';
import '/core/screens/loader.dart';
import '/core/widgets/round_button.dart';
import '/features/auth/providers/get_user_info_as_stream_by_id_provider.dart';

import '/features/posts/presentation/widgets/icon_text_button.dart';

class ProfileScreen extends ConsumerWidget {
  const ProfileScreen({
    super.key,
    this.userId,
  });

  final String? userId;

  static const routeName = '/profile';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final myUid = FirebaseAuth.instance.currentUser!.uid;
    final uid = userId ?? myUid;
    final userInfo = ref.watch(getUserInfoAsStreamByIdProvider(uid));

    return userInfo.when(
      data: (user) {
        return SafeArea(
          child: Scaffold(
            appBar: userId != myUid ? AppBar() : null,
            backgroundColor: AppColors.whiteColor,
            body: Padding(
              padding: Constants.defaultPadding,
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundImage: NetworkImage(user.profilePicUrl),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    user.fullName,
                    style: const TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 21,
                    ),
                  ),
                  const SizedBox(height: 10),
                  RoundButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed(
                        ChatScreen.routeName,
                        arguments: userId,
                      );
                    },
                    label: 'Send Message',
                    color: Colors.transparent,
                  ),
                  const SizedBox(height: 20),
                  _buildProfileInfo(
                    email: user.email,
                  ),
                ],
              ),
            ),
          ),
        );
      },
      error: (error, stackTrace) {
        return ErrorScreen(error: error.toString());
      },
      loading: () {
        return const Loader();
      },
    );
  }

  _buildProfileInfo({
    required String email,
  }) =>
      Column(
        children: [
          IconTextButton(
            icon: Icons.email,
            label: email,
          ),
        ],
      );
}
