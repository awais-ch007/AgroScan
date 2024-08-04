// ignore_for_file: prefer_const_constructors

import 'package:facebook_clone/features/posts/presentation/screens/comments_screen.dart';
import 'package:facebook_clone/features/posts/presentation/widgets/icon_text_button.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../core/widgets/post_info_tile.dart';
import '../../models/posts.dart';
import '../../providers/posts_provider.dart';

import 'post_Image_video_view.dart';
import 'round_like_icon.dart';
import 'package:facebook_clone/features/constants/constants.dart';

class PostTile extends ConsumerWidget {
  const PostTile({super.key, required this.post});

  final Post post;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Material(
      elevation: 2,
      shadowColor: Colors.transparent,
      child: Container(
        decoration: BoxDecoration(
          color: Constants.primaryColor.withOpacity(.1),
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
          border: Border.all(color: Color.fromARGB(255, 173, 173, 173)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10.0),
                topRight: Radius.circular(10.0),
              ),
              child: PostImageVideoView(
                fileUrl: post.fileUrl,
                fileType: post.postType,
              ),
            ),

            // Post Header

            PostInfoTile(
              datePublished: post.createdAt,
              userId: post.posterId,
            ),
            // Post Text
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 4),
              child: Text(post.content),
            ),
            // Post Video / Image
            // PostImageVideoView(
            //   fileUrl: post.fileUrl,
            //   fileType: post.postType,
            // ),
            // Post Stats and Buttons
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 15,
                vertical: 4,
              ),
              child: Column(
                children: [
                  // Post stats
                  PostStats(
                    likes: post.likes,
                  ),
                  const Divider(),
                  // Post Buttons
                  PostButtons(post: post),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class PostButtons extends ConsumerWidget {
  const PostButtons({
    super.key,
    required this.post,
  });

  final Post post;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isLiked = post.likes.contains(FirebaseAuth.instance.currentUser!.uid);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        IconTextButton(
          icon: isLiked
              ? FontAwesomeIcons.solidThumbsUp
              : FontAwesomeIcons.thumbsUp,
          color: isLiked
              ? Constants.primaryColor
              : Color.fromARGB(255, 42, 99, 37),
          label: 'Like',
          onPressed: () {
            ref
                .read(postsProvider)
                .likeDislikePost(postId: post.postId, likes: post.likes);
          },
        ),
        IconTextButton(
          icon: FontAwesomeIcons.solidMessage,
          label: 'Answer ',
          color: Constants.primaryColor,
          onPressed: () {
            Navigator.of(context).pushNamed(
              CommentsScreen.routeName,
              arguments: post.postId,
            );
          },
        ),
      ],
    );
  }
}

class PostStats extends StatelessWidget {
  const PostStats({
    super.key,
    required this.likes,
  });

  final List<String> likes;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const RoundLikeIcon(),
        const SizedBox(width: 5),
        Text('${likes.length}'),
      ],
    );
  }
}
