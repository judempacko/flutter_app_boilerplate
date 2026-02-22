---
description: Standards for handling exceptions, errors, and system logging.
---

# Error Handling and Logging

1. **No Throwing Exceptions in Domain:** The use cases and domain layer MUST NOT throw exceptions. Instead, return a standardized result wrapper like `Either<Failure, Success>` (using `fpdart` or `dartz`).
2. **Meaningful Failures:** Catch exceptions (e.g., `SocketException`, `HttpException`) strictly at the `datasource` / `data` boundary and map them into specific `Failure` classes (e.g., `ServerFailure`, `NetworkFailure`, `CacheFailure`) to be returned to the domain.
3. **Logging System:** Never use raw `print()` statements in production code. Use a comprehensive logging framework (like `logger` or a custom logging wrapper) that formats outputs, includes severity levels, and hides sensitive logs in release builds.
4. **Crash Reporting:** Ensure all unhandled exceptions and Flutter UI errors are forwarded to a crash reporting system (e.g., Firebase Crashlytics or Sentry) using `FlutterError.onError` and `PlatformDispatcher.instance.onError`.
5. **User-Friendly Error Messages:** Never display raw technical error strings or stack traces to the user. Always map failures to localized, friendly string messages in the UI presentation layer.
