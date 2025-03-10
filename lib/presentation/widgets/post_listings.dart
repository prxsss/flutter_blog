import 'package:blog_app/presentation/widgets/post_listing.dart';
import 'package:flutter/material.dart';

class PostListings extends StatelessWidget {
  const PostListings({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (context, index) {
        return const PostListing();
      },
      separatorBuilder: (context, index) => const Divider(),
      itemCount: 10,
    );
  }
}
