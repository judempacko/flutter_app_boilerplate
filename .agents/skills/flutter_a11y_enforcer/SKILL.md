---
name: flutter_a11y_enforcer
description: Accessibility Expert to ensure optimal support via screen readers (VoiceOver, TalkBack) and system zoom.
---

# Flutter Accessibility (a11y) Enforcer

## Objective

Generate UI/UX in full compliance with global mobile accessibility guidelines (Target size, Screen Reader, Scale font).

## Instructions

1. **Voice Assistance:** Verify that any interactive element lacking clear visual text (an image, a back icon, or a custom checkbox) contains a `Semantics` Widget with an adequate `label` property.
2. **Focus Navigation:** Ensure that the keyboard / screen reader focus order is logical, or suggest creating the semantic tree to force the order via `SemanticsService` to prevent user frustration.
3. **Text Scaling:** Prohibit the use of drastically fixed heights (`height: 30`) on a component displaying text. If the user adjusts their device with a larger system font (up to x2.5 / 250%), the layout must use `Wrap`, `Flexible`, or a `ListView` to avoid RenderOverflow errors (yellow and black overflow pixels).
4. **Minimum Touch Targets:** Guarantee that all button / link touch targets represent a minimum area of 48x48 (`minTouchTargetSize` material standard), via padding.
