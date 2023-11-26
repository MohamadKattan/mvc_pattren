// lib/env/env.dart
import 'package:envied/envied.dart';

part 'env.g.dart';

@Envied(path: '.env', useConstantCase: true)
abstract class Env {
  @EnviedField(varName: 'KEY1_TEST', obfuscate: true)
  static final String key1 = _Env.key1;
  @EnviedField(varName: 'KEY2_TEST', obfuscate: true)
  static final String key2 = _Env.key2;
}
