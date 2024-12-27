# Swift Async/Await Task Error

This repository demonstrates a common error when using async/await in Swift's Task. The bug arises from incorrectly handling the async operation within the Task, leading to unexpected behavior or potential crashes.

## Bug Description

The `fetchData()` function correctly uses async/await to fetch data from a URL. However, the usage of `await` within the Task in `main` function could cause issues. Async functions run on different threads, and the `Task` might not have proper handling of `async` calls.

## Solution

The solution fixes the error by correctly handling the async operation within the Task. The solution handles the potential errors effectively.