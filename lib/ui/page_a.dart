import 'package:deep_link/routes/app_router.dart';
import 'package:deep_link/routes/routes.dart';
import 'package:deep_link/utils/app_style.dart';
import 'package:flutter/material.dart';

class PageA extends StatelessWidget {
  const PageA({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page A'),
        leading: Container(),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Page A'),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () => AppRouter.pushNamed(Routes.pageB),
              style: AppStyle.buttonStyle(),
              child: const Text('Page B'),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                AppRouter.pushNamed(Routes.pageB);
                AppRouter.pushNamed(Routes.pageC);
                AppRouter.pushNamed(Routes.pageD);
              },
              style: AppStyle.buttonStyle(),
              child: const Text('Page D'),
            )
          ],
        ),
      ),
    );
  }
}
