---
description: Rules to enforce the boundaries and correct application of Clean Architecture.
---

# Clean Architecture Boundaries Strictness

1. **Domain Layer Independence:** The `domain` layer (entities, use cases, repository interfaces) is the heart of the application. It MUST remain completely agnostic of any Flutter UI package (`package:flutter/material.dart`, etc.) or third-party data package (e.g., `http`, `sqflite`). It should strictly be pure Dart code.
2. **Dependency Rule:** Source code dependencies must only point INWARD. `presentation` depends on `domain`. `data` depends on `domain`. The `domain` layer depends on NOTHING.
3. **Data Layer Contracts:** All network calls, local storage queries, or hardware abstractions inside `data` MUST implement a repository interface defined in the `domain` layer.
4. **Data Models vs Entities:** The `data` layer works with `Models` (with `fromJson` / `toJson` capabilities). Before passing data back to the use case, `Models` MUST be converted into pure `Entities`.
5. **UI Logic Isolation:** No business logic should ever be present in the `presentation` UI code. The UI's only job is to render states and emit events/intents to the presentation's state manager (e.g., Bloc, Riverpod).
