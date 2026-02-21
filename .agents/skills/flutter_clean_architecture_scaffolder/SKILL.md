---
name: flutter_clean_architecture_scaffolder
description: Enforce et génère l'arborescence et le boilerplate CLeap Architecture pour un projet Flutter.
---

# Flutter Clean Architecture Scaffolder

## Objectif

Créer et organiser les fichiers d'une nouvelle fonctionnalité (feature) en respectant strictement les principes de la Clean Architecture.

## Instructions

1. Lorsqu'on te demande de créer une nouvelle fonctionnalité (ex: `login`), tu DOIS générer l'arborescence suivante dans `lib/features/[feature_name]/` :
   - `domain/`
     - `entities/`
     - `repositories/`
     - `usecases/`
   - `data/`
     - `models/`
     - `repositories/` (implémentation)
     - `datasources/`
   - `presentation/`
     - `pages/`
     - `widgets/`
     - `bloc/` ou `providers/`
2. **Implémentation :**
   - Commence TOUJOURS par le `domain` (contrats et cas d'usage). Les entités ne doivent dépendre d'aucun package Flutter (Dart pur).
   - Ensuite le `data` (API, local storage) qui implémente le contrat du domaine.
   - Enfin, la `presentation` (UI) qui interagit avec le domaine via l'injection de dépendance (ex: Riverpod, get_it).
3. **Gestion des erreurs :** Toujours inclure la gestion des erreurs avec des types `Either` ou équivalent typé (ex: `fpdart`, `dartz` ou des Sealed Classes `Result`).
