import 'package:flutter/material.dart';
import 'package:instagram_clone/counter/counter.dart';
import 'package:instagram_clone/l10n/arb/app_localizations.dart';
import 'package:instagram_clone/todos/view/todos_view.dart';

class AppView extends StatelessWidget {
  const AppView({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        ),
        useMaterial3: true,
      ),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      debugShowCheckedModeBanner: false,
      home: const TodosView(),
    );
  }
}
