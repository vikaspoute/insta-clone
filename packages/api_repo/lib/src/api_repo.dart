/// {@template api_repo}
/// A fake API repo
/// {@endtemplate}
class ApiRepo {
  /// {@macro api_repo}
  const ApiRepo();

  /// {@macro api_repo}
  List<String> fetchTodos() =>
      ['Make homework', 'Go to shop', 'Go to the shop'];
}
