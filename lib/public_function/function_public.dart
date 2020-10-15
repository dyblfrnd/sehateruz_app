import 'dart:math';

import 'package:sehateruz_app/public_function/data.dart';

RandomPicking() {
  var randomPick = new Random();

  var randomQuotes = randomPick.nextInt(quotes.length);

  return randomQuotes;
}
