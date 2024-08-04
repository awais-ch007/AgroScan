// ignore_for_file: prefer_const_constructors

import 'dart:io';

import 'package:facebook_clone/core/constants/app_colors.dart';
import 'package:facebook_clone/core/constants/constants.dart';
import 'package:facebook_clone/core/utils/utils.dart';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../providers/posts_provider.dart';
import '../widgets/image_video_view.dart';
import '../widgets/profile_info.dart';

class CreatePostScreen extends ConsumerStatefulWidget {
  const CreatePostScreen({super.key});

  static const routeName = '/create-post';

  @override
  ConsumerState<CreatePostScreen> createState() => _CreatePostScreenState();
}

class _CreatePostScreenState extends ConsumerState<CreatePostScreen> {
  late final TextEditingController _postController;
  File? file;
  String fileType = 'image';
  bool isLoading = false;

  @override
  void initState() {
    _postController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _postController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double height = size.height;
    return Scaffold(
      appBar: AppBar(
        actions: [
          TextButton(
            onPressed: makePost,
            child: Text(
              'Ask',
              style: TextStyle(color: Colors.black54, fontSize: height * 0.02),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: Constants.defaultPadding,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const ProfileInfo(),
              // post text field
              TextField(
                controller: _postController,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText:
                      'Add a question indicating what\'s wrong with your crop',
                  hintStyle: TextStyle(
                    fontSize: height * 0.02,
                    color: AppColors.darkGreyColor,
                  ),
                ),
                keyboardType: TextInputType.multiline,
                minLines: 1,
                maxLines: 10,
              ),
              const SizedBox(height: 20),
              file != null
                  ? ImageVideoView(
                      file: file!,
                      fileType: fileType,
                    )
                  : PickFileWidget(
                      pickImage: () async {
                        fileType = 'image';
                        file = await pickImage();
                        setState(() {});
                      },
                      pickVideo: () async {
                        fileType = 'video';
                        file = await pickVideo();
                        setState(() {});
                      },
                    ),
              const SizedBox(height: 20),
              isLoading
                  ? const Center(
                      child: CircularProgressIndicator(),
                    )
                  : GestureDetector(
                      onTap: makePost,
                      child: Container(
                        width: size.width,
                        decoration: BoxDecoration(
                          color: Color(0xff296e48),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 20),
                        child: const Center(
                          child: Text(
                            'Ask ',
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
      ),
    );
  }

  Future<void> makePost() async {
    setState(() => isLoading = true);
    await ref
        .read(postsProvider)
        .makePost(
          content: _postController.text,
          file: file!,
          postType: fileType,
        )
        .then((value) {
      Navigator.of(context).pop();
    }).catchError((_) {
      setState(() => isLoading = false);
    });
    setState(() => isLoading = false);
  }
}

class PickFileWidget extends StatelessWidget {
  const PickFileWidget({
    super.key,
    required this.pickImage,
    required this.pickVideo,
  });

  final VoidCallback pickImage;
  final VoidCallback pickVideo;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextButton(
          onPressed: pickImage,
          child: const Text(
            'Pick Image',
            style: TextStyle(
              color: Color(0xff296e48),
              fontSize: 18,
            ),
          ),
        ),
        const Divider(),
        TextButton(
          onPressed: pickVideo,
          child: const Text(
            'Pick Video',
            style: TextStyle(
              color: Color(0xff296e48),
              fontSize: 18,
            ),
          ),
        ),
      ],
    );
  }
}
