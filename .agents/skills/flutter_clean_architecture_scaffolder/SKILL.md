---
name: flutter_clean_architecture_scaffolder
description: Enforces and generates the Clean Architecture tree and boilerplate for a Flutter project.
---

# Flutter Clean Architecture Scaffolder

## Objective

Create and organize the files of a new feature while strictly adhering to Clean Architecture principles.

## Instructions

1. When asked to create a new feature (e.g., `login`), you MUST generate the following tree structure in `lib/features/[feature_name]/`:
   - `domain/`
     - `entities/`
     - `repositories/`
     - `usecases/`
   - `data/`
     - `models/`
     - `repositories/` (implementation)
     - `datasources/`
   - `presentation/`
     - `pages/`
     - `widgets/`
     - `bloc/` or `providers/`
2. **Implementation:**
   - ALWAYS start with the `domain` (contracts and use cases). Entities must not depend on any Flutter package (pure Dart).
   - Then the `data` (API, local storage) which implements the domain contract.
   - Finally, the `presentation` (UI) which interacts with the domain via dependency injection (e.g., Riverpod, get_it).
3. **Error Handling:** Always include error handling with `Either` types or equivalent typed results (e.g., `fpdart`, `dartz` or Sealed Classes `Result`).
