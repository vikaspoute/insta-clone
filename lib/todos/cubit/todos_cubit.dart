import 'package:api_repo/api_repo.dart';
import 'package:bloc/bloc.dart';

class TodosCubit extends Cubit<List<String>> {
  TodosCubit({required ApiRepo repo})
      : _apiRepo = repo,
        super(const <String>[]);

  final ApiRepo _apiRepo;

  void fetchTodos() => emit(_apiRepo.fetchTodos());
}
