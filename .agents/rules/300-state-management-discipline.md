---
description: Guidelines for managing state efficiently and cleanly.
---

# State Management Discipline

1. **Dumb UI Components:** Widgets should be "dumb". They react to state changes and trigger events without knowing how the event is processed.
2. **Reactive Approach:** Always prefer a reactive approach over an imperative one. Instead of querying data manually (imperative), the UI should listen/subscribe to streams or state changes (reactive) and rebuild only when necessary.
3. **Minimize StatefulWidgets:** Prefer stateless widgets wrapped in state observers (like `BlocBuilder` or `Consumer`) to limit the scope of rebuilds. Reserve `StatefulWidget` strictly for local UI states (e.g., animations, text controller, scroll controllers) that do not impact global business logic.
4. **Immutability:** State classes must be absolutely immutable. Use packages like `freezed` or `equatable` with `copyWith` methods to return new state instances instead of mutating existing ones.
5. **Single Source of Truth:** Never duplicate state across multiple providers or blocs. Keep a single source of truth and compute derived states from it.
