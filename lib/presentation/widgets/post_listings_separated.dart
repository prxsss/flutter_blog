import 'package:blog_app/presentation/widgets/post_listing.dart';
import 'package:flutter/material.dart';

class PostListingsSeparated extends StatelessWidget {
  const PostListingsSeparated({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return const PostListing();
      },
      separatorBuilder: (context, index) => const Divider(),
      itemCount: 10,
    );
  }
}
