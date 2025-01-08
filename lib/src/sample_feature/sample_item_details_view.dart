import 'package:flutter/material.dart';
import 'package:taski_challenger_app/src/core/ds/components/button/app_button.dart';
import 'package:taski_challenger_app/src/core/ds/components/input/app_input_search.dart';
import 'package:taski_challenger_app/src/core/ds/tokens/alias/app_colors.dart';

/// Displays detailed information about a SampleItem.
class SampleItemDetailsView extends StatelessWidget {
  const SampleItemDetailsView({super.key});

  static const routeName = '/sample_item';

  @override
  Widget build(BuildContext context) {
  final textController = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Item Details'),
      ),
      body: Column(
        children: [ AppButton(
          label: 'Create task',
          icon: Icon(Icons.add, size: 20, color: AppColors.primary,),
          onPressed: () {}
        ),
        AppInputSearch(controller: textController)
        ]
      ),
    );
  }
}
