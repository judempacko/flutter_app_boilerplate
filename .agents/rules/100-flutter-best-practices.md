---
description: Mandatory rules for Dart and Flutter syntax, styling, and general best practices.
---

# Flutter & Dart Best Practices

1. **Leverage `const` everywhere:** You MUST suggest and use the `const` modifier for constructor calls, lists, and maps whenever possible. This massively improves performance and reduces memory allocation.
2. **Trailing Commas:** Enforce trailing commas for all constructor arguments, function arguments, and arrays that contain more than 2 items. This makes Git diffs readable and formatting predictable by `dart format`.
3. **Private Members:** Variables, functions, and classes that are not meant to be exposed outside the library/file MUST be prefixed with an underscore `_`.
4. **Avoid `dynamic`:** Strictly avoid using `dynamic` unless absolutely necessary (e.g., when parsing deeply nested, poorly typed JSON). Prefer `Object?` and type casting, or strictly type everything.
5. **Null Safety:** Leverage Dart's sound null-safety. Use `?` for nullable fields, `late` only when confident the variable is initialized before use (e.g., in `initState`), and avoid the `!` operator (bang operator) to force unwrapping unless manually checked just prior.
