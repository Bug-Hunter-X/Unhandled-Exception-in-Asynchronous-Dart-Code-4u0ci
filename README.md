# Unhandled Exception in Asynchronous Dart Code

This repository demonstrates a common error handling pattern in asynchronous Dart code. The `bug.dart` file shows the initial code with a potential exception, while `bugSolution.dart` provides an improved version.  The example focuses on handling network requests but the principles apply to other asynchronous operations.

**Problem:**
The original code handles exceptions from the `http.get` call within the `catch` block. However, it might be beneficial to rethrow the exception for higher-level handling.

**Solution:**
The improved version uses `rethrow` to propagate the exception up the call stack, allowing a more centralized error handling mechanism if needed.
