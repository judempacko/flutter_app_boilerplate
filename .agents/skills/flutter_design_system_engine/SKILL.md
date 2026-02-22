---
name: flutter_design_system_engine
description: Centralizes, types, and strictly enforces the use of a UI global variable system (Theme, Typography, Color Palette).
---

# Flutter Design System Engine

## Objective

Prohibit hardcoding in pages (`lib/presentation/pages/`) and enforce the use of shared foundations for perfect scaling.

## Instructions

1. **Zero Tolerance for "Hardcoded" Code:** Identify hardcoded colors (`Colors.blue[400]`), hardcoded spacings `SizedBox(height: 20)` or non-centralized custom fonts. Replace with theme access (e.g., `context.theme.textTheme.bodyLarge`).
2. **ThemeExtensions:** Manage any visual additions (e.g., a semantic color palette, button components, shadows) via the Flutter `ThemeExtension` system, to allow simultaneous resolution of Light Mode and Dark Mode.
3. **Spacing Constant Variables:** Use static spacing classes like `AppSpacing/AppPadding` (e.g., `AppPadding.large` rather than `EdgeInsets.all(24)`).
4. **Components ("Dumb Widgets"):** Whenever a request adds a generic component (Button, Input, Card), you must consider whether it can exist without business context (State agnostic) and if it should be placed in the application's `design_system` directory.
