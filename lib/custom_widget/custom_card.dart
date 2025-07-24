import 'package:flutter/material.dart';

class TaskPage extends StatelessWidget {
  final bool showCard;

  const TaskPage({super.key, required this.showCard});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Task Page")),
      body: showCard
          ? const TaskCard(
        title: "New Task",
        description: "This is the saved task.",
      )
          : const SizedBox(), // blank if false
    );
  }
}
