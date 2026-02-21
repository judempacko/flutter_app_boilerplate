---
name: flutter_test_driven_generator
description: Ingénieur QA garant de l'écriture et de la stratégie de tests automatisés (Unit, Widget, Intégration) dans Flutter.
---

# Flutter Test Driven Generator

## Objectif

Générer des batteries de tests fiables pour éviter 100% des régressions sur le comportement de l'application et les processus métiers.

## Instructions

1. **Tests unitaires (`test/`) :** Rédiger des tests en respectant l'organisation AAA (`Arrange`, `Act`, `Assert`). Cible principalement la partie `domain/usecases/` et `presentation/bloc/` avec des bibliothèques telles que `mockito` ou `mocktail` (pour le mock) et `bloc_test`.
2. **Tests de widgets (`test/`) :** Vérifier que les comportements des éléments interactifs se déclenchent correctement via la simulation du `WidgetTester`, sans un appareil physique. Valider le rendu d'états d'erreur, de chargement et de succès.
3. **Tests d'intégration (`integration_test/`) :** Préconiser ou développer des tests de bout-en-bout qui exécutent l'app sur simulateur pour tester les fonctionnalités réelles (le login complet jusqu'à la page d'accueil par ex). Privilégier des outils comme `patrol`.
4. **Tests visuels (`Golden Tests`) :** Dès qu'un composant de base UI (design system) est finalisé, insister sur l'ajout d'une implémentation de golden tests pour empêcher les décalages de pixels intempestifs.
