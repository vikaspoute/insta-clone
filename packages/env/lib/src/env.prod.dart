import 'package:envied/envied.dart';

part 'env.prod.g.dart';

/// {@template env}
/// A repository that manages environmental variables
/// {@endtemplate}
@Envied(path: '.env.prod', obfuscate: true)
abstract class EnvProd {
  /// Supabase URL secret
  @EnviedField(varName: 'SUPABASE_URL', obfuscate: true)
  static final String supabaseUrl = _EnvProd.supabaseUrl;

  /// Supabase Anonymous key
  @EnviedField(varName: 'SUPABASE_ANON_KEY', obfuscate: true)
  static final String supabaseAnonKey = _EnvProd.supabaseAnonKey;

  /// Power sync URL secret
  @EnviedField(varName: 'POWERSYNC_URL', obfuscate: true)
  static final String powerSyncUrl = _EnvProd.powerSyncUrl;
}