import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:simply_sell/core/constants/page_constant.dart';

import '../../domain/entity/category_entity.dart';

class CategoryTile extends StatelessWidget {
  const CategoryTile({
    super.key,
    required this.category,
  });

  final CategoryEntity category;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => context.push(PageConst.products),
      child: Column(
        children: [
          CachedNetworkImage(
            imageUrl: category.categoryImage,
          ),
          SizedBox(height: 4),
          Text(
            category.categoryName,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.bodySmall,
          ),
        ],
      ),
    );
  }
}
