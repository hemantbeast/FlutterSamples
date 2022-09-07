import 'package:deep_link/routes/app_router.dart';
import 'package:deep_link/routes/routes.dart';
import 'package:deep_link/utils/app_style.dart';
import 'package:flutter/material.dart';

class PageC extends StatelessWidget {
  const PageC({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page C'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Page C'),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () => AppRouter.pushNamed(Routes.pageD),
              style: AppStyle.buttonStyle(),
              child: const Text('Page D'),
            )
          ],
        ),
      ),
    );
  }
}
