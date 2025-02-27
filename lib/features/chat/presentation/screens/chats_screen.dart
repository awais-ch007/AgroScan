// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_local_variable, unnecessary_const

import 'package:facebook_clone/core/constants/app_colors.dart';
import 'package:facebook_clone/core/constants/constants.dart';

import 'package:facebook_clone/features/chat/presentation/widgets/chats_list.dart';
import 'package:facebook_clone/features/chat/presentation/widgets/my_profile_pic.dart';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ChatsScreen extends ConsumerStatefulWidget {
  static const routeName = '/chats-screen';

  const ChatsScreen({super.key});

  @override
  ConsumerState<ChatsScreen> createState() => _ChatsScreenState();
}

class _ChatsScreenState extends ConsumerState<ChatsScreen> {
  @override
  Widget build(BuildContext context) {
    String? userId;
    return Scaffold(
      backgroundColor: AppColors.realWhiteColor,
      body: SafeArea(
        child: Padding(
          padding: Constants.defaultPadding,
          child: SingleChildScrollView(
            child: Column(
              children: [
                // build chats app bar
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(
                        Icons.arrow_back_sharp,
                        color: Constants.primaryColor,
                      ),
                    ),
                    const SizedBox(width: 10),
                    _buildChatsAppBar(),
                  ],
                ),

                const SizedBox(height: 20),

                // Search widget
                _buildChatsSearchWidget(),

                const SizedBox(height: 30),

                // Chats List
                const SizedBox(
                  height: 600,
                  child: ChatsList(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildChatsAppBar() => Row(
        children: [
          const MyProfilePic(),
          const SizedBox(width: 5),
          const Text(
            'Chats',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      );

  Widget _buildChatsSearchWidget() => Container(
        decoration: BoxDecoration(
          color: AppColors.greyColor.withOpacity(.5),
          borderRadius: BorderRadius.circular(15),
        ),
        child: const Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(width: 15),
            const Icon(Icons.search),
            const SizedBox(width: 15),
            Expanded(
              child: TextField(
                decoration: const InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Search',
                  hintStyle: TextStyle(),
                ),
              ),
            ),
          ],
        ),
      );
}
