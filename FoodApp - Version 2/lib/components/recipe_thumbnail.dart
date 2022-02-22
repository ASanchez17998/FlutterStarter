import 'package:flutter/material.dart';
import '../models/models.dart';

class RecipeThumbnail extends StatelessWidget{
  final SimpleRecipe recipe;
  const RecipeThumbnail({
    Key? key,
    required this.recipe,
})     : super(key:key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      padding: const EdgeInsets.all(8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
              child: ClipRRect(
                child: Image.asset(
                  '${recipe.dishImage}',
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(12),
              ),
          ),
          const SizedBox(height: 10,),
          Text(
            recipe.title,
            maxLines: 1,

          ),
          Text(
            recipe.duration
          ),
        ],
      ),

    );
  }

}