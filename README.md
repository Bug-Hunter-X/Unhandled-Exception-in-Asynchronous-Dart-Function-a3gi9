# Unhandled Exception in Asynchronous Dart Function

This repository demonstrates a common error in Dart asynchronous programming:  failure to rethrow exceptions in `async` functions. The `fetchData` function fetches data from an API and handles potential errors. However, the initial version silently catches exceptions and doesn't propagate them, making it difficult to debug.

The solution demonstrates the importance of rethrowing exceptions to allow calling functions to handle errors appropriately.  The corrected version rethrows the exception, ensuring the error is properly handled up the call stack.