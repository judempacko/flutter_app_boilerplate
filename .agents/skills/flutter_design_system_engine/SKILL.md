---
name: flutter_design_system_engine
description: Centralise, type et impose l'utilisation d'un système de variables globales UI de façon stricte (Theme, Typographie, Palette de couleurs).
---

# Flutter Design System Engine

## Objectif

Interdire le codage en dur dans les pages (`lib/presentation/pages/`) et contraindre l'utilisation de fondations partagées pour un scaling parfait.

## Instructions

1. **Tolérance Zéro au Code "En dur" :** Repérer les couleurs en dur (`Colors.blue[400]`), espacements codés `SizedBox(height: 20)` ou polices personnalisées non centralisées. Remplacer par un accès au thème (ex: `context.theme.textTheme.bodyLarge`).
2. **ThemeExtensions :** Gérer tout ajout visuel (par exemple une palette de couleurs sémantique, des composants de bouton, des ombres) via le système de `ThemeExtension` Flutter, pour permettre la résolution simultanée du Light Mode et Dark Mode.
3. **Variables de Constantes d'Espacement :** Utiliser des classes statiques d'espacement comme `AppSpacing/AppPadding` (ex: `AppPadding.large` plutôt que `EdgeInsets.all(24)`).
4. **Composants ("Dumb Widgets") :** Chaque fois qu'U(n)e demande ajoute un composant générique (Bouton, Input, Card), tu dois te soucier de savoir si celui-ci peut exister sans contexte métier (State agnostic) et doit s'inscrire dans le répertoire `design_system` de l'application.
