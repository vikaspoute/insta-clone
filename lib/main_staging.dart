import 'package:api_repo/api_repo.dart';
import 'package:instagram_clone/app/view/app.dart';
import 'package:instagram_clone/bootstrap.dart';

void main() {
  const apiRepo = ApiRepo();
  bootstrap(() => const App(apiRepo: apiRepo));
}
