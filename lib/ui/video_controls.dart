import 'dart:ui';

import 'package:flick_video_player/flick_video_player.dart';
import 'package:flutter/material.dart';

class VideoControls extends StatelessWidget {
  final VoidCallback? onTap;

  const VideoControls({Key? key, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isIPhoneX = window.viewPadding.bottom > 0;

    return Stack(
      children: [
        Padding(
          padding: isIPhoneX ? const EdgeInsets.only(left: 20, right: 20, bottom: 8) : EdgeInsets.zero,
          child: const FlickLandscapeControls(),
        ),
        FlickAutoHideChild(
          child: Container(
            height: 40,
            width: 40,
            margin: isIPhoneX ? const EdgeInsets.only(left: 30, top: 20) : const EdgeInsets.only(left: 20, top: 10),
            child: InkWell(
              onTap: onTap,
              child: const Icon(
                Icons.arrow_back_ios,
                color: Colors.white,
                size: 24,
              ),
            ),
          ),
        )
      ],
    );
  }
}
