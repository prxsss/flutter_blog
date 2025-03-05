import 'package:blog_app/presentation/widgets/blog_listing.dart';
import 'package:flutter/material.dart';

class BlogListings extends StatelessWidget {
  const BlogListings({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (context, index) {
        return const BlogListing();
      },
      separatorBuilder: (context, index) => const Divider(),
      itemCount: 10,
    );
  }
}
