import 'package:deep_link/routes/app_router.dart';
import 'package:deep_link/routes/routes.dart';
import 'package:deep_link/utils/app_style.dart';
import 'package:flutter/material.dart';

class PageD extends StatelessWidget {
  const PageD({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page D'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Page D'),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => AppRouter.popUntil(Routes.pageB),
              style: AppStyle.buttonStyle(),
              child: const Text('Page B'),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () => AppRouter.popUntilRoot(),
              style: AppStyle.buttonStyle(),
              child: const Text('Page A'),
            ),
          ],
        ),
      ),
    );
  }
}
