import 'package:envied/envied.dart';

part 'env.dev.g.dart';

/// {@template env}
/// A repository that manages environmental variables
/// {@endtemplate}
@Envied(path: '.env.dev', obfuscate: true)
abstract class EnvDev {
  /// Supabase URL secret
  @EnviedField(varName: 'SUPABASE_URL', obfuscate: true)
  static final String supabaseUrl = _EnvDev.supabaseUrl;

  /// Supabase Anonymous key
  @EnviedField(varName: 'SUPABASE_ANON_KEY', obfuscate: true)
  static final String supabaseAnonKey = _EnvDev.supabaseAnonKey;

  /// Power sync URL secret
  @EnviedField(varName: 'POWERSYNC_URL', obfuscate: true)
  static final String powerSyncUrl = _EnvDev.powerSyncUrl;
}