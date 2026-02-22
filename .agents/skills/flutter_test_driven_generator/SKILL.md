---
name: flutter_test_driven_generator
description: QA Engineer responsible for writing and strategizing automated tests (Unit, Widget, Integration) in Flutter.
---

# Flutter Test Driven Generator

## Objective

Generate reliable test suites to prevent 100% of regressions on application behavior and business processes.

## Instructions

1. **Unit Tests (`test/`):** Write tests following the AAA organization (`Arrange`, `Act`, `Assert`). Primarily targets the `domain/usecases/` and `presentation/bloc/` parts with libraries such as `mockito` or `mocktail` (for mocking) and `bloc_test`.
2. **Widget Tests (`test/`):** Verify that the behaviors of interactive elements trigger correctly via `WidgetTester` simulation, without a physical device. Validate rendering of error, loading, and success states.
3. **Integration Tests (`integration_test/`):** Recommend or develop end-to-end tests that run the app on a simulator to test actual features (e.g., complete login flow to the home page). Favor tools like `patrol`.
4. **Visual Tests (`Golden Tests`):** As soon as a basic UI component (design system) is finalized, insist on adding a golden test implementation to prevent unwanted pixel shifts.
