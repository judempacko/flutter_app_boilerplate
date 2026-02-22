# Flutter God Tier Boilerplate 🚀

This repository serves as a **"Template Repository"** (Boilerplate) to instantly kickstart any new Flutter application. Upon cloning, it includes:

1. A prepared codebase (Clean Architecture / Feature-Driven)
2. A suite of essential dependencies (Riverpod, GoRouter, Dio, GetIt...)
3. **The project's AI brain** (the `.agents/skills` and `.agents/rules` folders) allowing assistants (like Gemini, Cursor, or Claude) to understand the quality requirements (Design System, Automated Tests, A11y, Clean Architecture).

## 🛠️ How to use it for your new project?

1. On GitHub, click the green **"Use this template"** button (top right) and name your new repository.
2. Clone your new repository: `git clone [URL]`
3. Automatically rename all occurrences of `flutter_app_boilerplate` to your app's actual name by running this _from the root of the project_:
   ```bash
   dart run scripts/rename_project.dart your_actual_project_name
   ```
4. Run `flutter pub get`
5. (Optional) Delete the `scripts/` folder once the operation is completed.
6. You're ready to go! 🚀

---

## 📂 Embedded Architecture

- `lib/core/`: Vital components (dependency injection, dio client, loggers, env...).
- `lib/design_system/`: Starting point for your UI variable framework (`ThemeExtensions`, `Spacing`, Palette, Typography).
- `lib/features/`: Your future domains, isolated and ready for Clean Architecture.
- `.agents/rules/`: Foundation rules and best practices:
  - `100-flutter-best-practices.md`
  - `200-clean-architecture-boundaries.md`
  - `300-state-management-discipline.md`
  - `400-error-handling-and-logging.md`
  - `500-ui-and-accessibility.md`
- `.agents/skills/`: All the guidelines for your AI Assistant to respect your requirements per subject:
  - `flutter_clean_architecture_scaffolder`
  - `flutter_design_system_engine`
  - `flutter_test_driven_generator`
  - `flutter_ci_cd_architect`
  - `flutter_native_bridge_expert`
  - `flutter_performance_auditor`
  - `flutter_a11y_enforcer`

## 📦 Default Packages

- **State Management & DI / Routing**: `flutter_riverpod`, `riverpod_annotation`, `get_it`, `go_router`
- **Networking & Errors**: `dio`, `fpdart` (or `dartz`)
- **UI & Tools**: `shared_preferences`, `google_fonts`, `flutter_svg`
- **CI/CD Generators**: `build_runner`, `custom_lint`, `riverpod_lint`
