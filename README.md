# Flutter God Tier Boilerplate 🚀

Ce dépôt sert de **"Template Repository"** (Boilerplate) pour démarrer instantanément n'importe quelle nouvelle application Flutter. Il intègre dès son clonage :

1. Une base de code préparée (Clean Architecture / Feature-Driven)
2. Une suite de dépendances incontournables (Riverpod, GoRouter, Dio, GetIt...)
3. **Le cerveau IA du projet** (le dossier `.agents/skills`) permettant aux assistants (comme Gemini, Cursor ou Claude) de comprendre l'exigence de qualité (Design System, Tests Auto, A11y).

## 🛠️ Comment l'utiliser pour ton nouveau projet ?

1. Sur GitHub, clique sur le bouton vert **"Use this template"** (en haut à droite) et nomme ton nouveau dépôt.
2. Clone ton nouveau dépôt : `git clone [URL]`
3. Renomme automatiquement toutes les occurences de `flutter_app_boilerplate` vers le vrai nom de ton app en lançant _depuis la racine du projet_ :
   ```bash
   dart run scripts/rename_project.dart ton_vrai_nom_de_projet
   ```
4. Lance `flutter pub get`
5. (Optionnel) Supprime le dossier `scripts/` une fois l'opération terminée.
6. C'est parti ! 🚀

---

## 📂 Architecture embarquée

- `lib/core/` : Composants vitaux (injection de dépendances, dio client, loggers, env...).
- `lib/design_system/` : Point de départ pour ton framework de variables UI (`ThemeExtensions`, `Spacing`, Palette, Textes).
- `lib/features/` : Tes futurs domaines, cloisonnés et prêts pour Clean Architecture.
- `.agents/skills/` : Toutes les directives pour que l'Outil IA respecte t(es) exigence(s) :
  - `flutter_clean_architecture_scaffolder`
  - `flutter_design_system_engine`
  - `flutter_test_driven_generator`
  - `flutter_ci_cd_architect`
  - `flutter_native_bridge_expert`
  - `flutter_performance_auditor`
  - `flutter_a11y_enforcer`

## 📦 Packages par défaut

- **State Management & DI / Routing** : `flutter_riverpod`, `riverpod_annotation`, `get_it`, `go_router`
- **Networking & Erreurs** : `dio`, `dartz`
- **UI & Outils** : `shared_preferences`, `google_fonts`, `flutter_svg`
- **Générateurs CI/CD** : `build_runner`, `custom_lint`, `riverpod_lint`
