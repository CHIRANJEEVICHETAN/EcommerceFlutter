
import 'package:uuid/uuid.dart';

class UidGenerator {
  static String generate() {
    return const Uuid().v4();
  }
}
