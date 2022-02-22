import 'package:flutter/material.dart';
import '../components/components.dart';
import '../models/models.dart';
import '../api/mock_fooderlich_service.dart';
class ExploreScreen extends StatefulWidget {

  ExploreScreen({Key? key}) : super(key: key);

  @override
  State<ExploreScreen> createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen> {
  // 1
  final mockService = MockFooderlichService();


  @override
  Widget build(BuildContext context) {
    // 2
// 1
    return FutureBuilder(
        // 2
        future: mockService.getExploreData(),
    // 3
    builder: (context, AsyncSnapshot<ExploreData> snapshot) {
      // TODO: Add Nested List Views
      // 4
      if (snapshot.connectionState == ConnectionState.done) {
        // 5
        final recipes = snapshot.data?.todayRecipes ?? [];
        // TODO: Replace this with TodayRecipeListView
        return TodayRecipeListView(recipes: recipes);

      } else {
        // 6
        return const Center(
          child: CircularProgressIndicator(),
        );
      }
    },
    );
    }
}
