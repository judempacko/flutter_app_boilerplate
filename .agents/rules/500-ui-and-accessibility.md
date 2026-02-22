---
description: Mandatory rules for building a scalable and accessible user interface.
---

# UI, Design System, and Accessibility

1. **No Hardcoded Styles:** Absolutely no hardcoded colors, generic paddings, or font sizes inline. ALWAYS use `Theme.of(context)` or custom `ThemeExtension` to retrieve styles.
2. **Responsive Layouts:** UIs must scale graciously across different screen sizes. Avoid fixed widths or heights where possible; prefer `Expanded`, `Flexible`, `Wrap` and relative measurements. Always be mindful of text scaling limits (which implies text might wrap into multiple lines).
3. **Internationalization (i18n):** Never hardcode user-facing strings in the UI. All texts MUST be retrieved from the localization framework/arb files (e.g., `context.l10n.submitButton`).
4. **Accessibility (a11y) First:** Ensure all interactive widgets (like custom `InkWell` or buttons containing only icons) have a proper semantic label.
5. **Dumb Components extraction:** Any visual element used more than twice (a styled button, a specific card layout, a customized input field) MUST be extracted into the global `design_system` folder as a reusable widget.
