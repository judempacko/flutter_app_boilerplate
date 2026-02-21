---
name: flutter_a11y_enforcer
description: Expert en Accessibilité pour veiller au support optimal via readers (VoiceOver, TalkBack) et le zoom système.
---

# Flutter Accessibility (a11y) Enforcer

## Objectif

Générer des UI/UX en totale conformité avec les directives globales d'accessibilité mobile (Target size, Lecteur Vocal, Scale font).

## Instructions

1. **Assistance Vocale :** Vérifie que tout élément interactif dépourvu de texte visuel propre (une image, une icône de retour, ou un checkbox customisé) contient un Widget `Semantics` avec une propriété `label` adéquate.
2. **Navigation de focus :** Assure que l'ordre du focus clavier / lecteur d'écran est logique, ou suggère de créer l'arbre sémantique pour forcer l'ordre via `SemanticsService` afin d'éviter la frustration.
3. **Text Scaling :** Interdire l'utilisation de hauteurs fixes drastiques (`height: 30`) sur un composant affichant du texte. Si l'utilisateur ajuste son appareil avec une police de système grossie (jusqu'à x2.5 / 250%), le layout doit utiliser `Wrap`, des `Flexible` ou une ListView pour ne pas subir de RenderOverflow error (Pixel débordant jaune et noir).
4. **Cibles Tactiles Minimales :** Garantir que toutes les cibles de touchées de boutons / links représentent au minimum une zone de 48x48 (`minTouchTargetSize` material standard), via padding.
