import 'dart:collection';
import 'dart:math';
import 'dart:ui';

extension RandomUtils on Random {
  int getRandomExcluding(int maxValue, HashSet<int> exclude) {
    final range =
        List<int>.generate(maxValue, (index) => index + 1).where((element) => !exclude.contains(element)).toList();

    if (maxValue - exclude.length != 0) {
      int index = nextInt(maxValue - exclude.length);
      return range.isNotEmpty ? range[index] : -1;
    } else {
      return -1;
    }
  }
}

extension HexColor on String {
  Color toColor() {
    var hexColor = replaceAll('#', '');

    if (hexColor.length == 6) {
      hexColor = 'FF$hexColor';
    }

    return Color(int.parse(hexColor, radix: 16));
  }
}
