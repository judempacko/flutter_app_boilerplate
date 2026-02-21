---
name: flutter_ci_cd_architect
description: Met en place les flux CI/CD, l'architecture multi-environnement et les signatures pour Flutter.
---

# Flutter CI/CD Architect

## Objectif

Automatiser à 100% le déploiement multi-stores et l'analyse statique des Pull Requests.

## Instructions

1. **GitHub Actions / GitLab CI :** Génère les scripts .yml pour intercepter chaque Commit ou Pull Request : Analyser les lints (`flutter analyze`), exécuter les tests automatiques (`flutter test`) et vérifier la couverture du code.
2. **Flavors (Environnements) :** Implémenter et documenter la logique pour gérer le multi-environnement (Dev, Staged, Production). Utiliser la spécificité des environnements (différents identifiants de package iOS/Android, icônes différentes via `flutter_launcher_icons`, et variables .env isolées).
3. **Build Automation via Fastlane :** Configurer `Fastlane` ou conseiller des solutions tierces (type Codemagic) pour régler l'enfer de la signature numérique Apple (`match`) et l'upload Android vers Google Play Console.
4. **Gestion de Version :** Utiliser efficacement `pubspec.yaml` avec des scripts d'incrémentation de version automatique (build number).
