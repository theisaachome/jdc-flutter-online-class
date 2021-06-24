## Asynchronous Programming

- [Why Async](#why-async)
- [Futures](#Futures)
---

### Why Async

- 99% applicationns will do the following:

  - Fetching data from the network
  - Writing to a database
  - Reading data from the file

- What will apps be woding while waiting for async operations to complete
  - Dart has  Future, asncy & await
  - Stream: asynchronous events delivered over time.
    - often used in reactive applications (others declarative frameworks)

---

### Futures 

-  A future represents the result of an asynchronous operation,

-  two states: uncompleted or completed.

  - Uncompleted  means the state of a future before it has produced a value.
### Uncompleted
  - call an asynchronous function , it returns an uncompleted future.
  - That future is waiting for the function’s asynchronous operation to finish or to throw an error.

### Completed
  - If the operation succeeds, the future completes with a value.
  - Otherwise it completes with an error.



### Completing with a value
- A future of type `Future<T>` completes with a value of type T. 
 - a future with type `Future<String>` produces a string value.
 - If a future doesn’t produce a usable value, then the future’s type is `Future<void>`.


### Completing with an error
- If the function fails for any reason, the future completes with an error.

--- 

### Example:Introducing futures

```dart
Future<void> fetchUserOrder() {
  // fetching user info from another service or database.
  return Future.delayed(Duration(seconds: 2), () => print('Large Latte'));
}
void main() {
  fetchUserOrder();
  // print first 
  print('Fetching user order...');
}
```

---
### Example: Completing with an error

```dart
Future<void> fetchUserOrder() {
// Imagine that this function is fetching user info but encounters a bug
  return Future.delayed(Duration(seconds: 2),
      () => throw Exception('Logout failed: user ID is invalid'));
}

void main() {
  fetchUserOrder();
  print('Fetching user order...');
}
```



--- 
### **async and await **

- A declarative way to define asynchronous functions and use their results. 
- Two rules:
  - To define an async function, add async before the function body:
  ```dart
  void main() async { ··· }
  ```
  - The await keyword works only in async functions.


### Example 

```dart

Future<String> fetchUserOrder() =>
    // Imagine that this function is
    // more complex and slow.
    Future.delayed(
      Duration(seconds: 2),
      () => 'Large Latte',
    );

Future<void> printOrderMessage() async {
  print('Awaiting user order...');
  var orderItem = await fetchUserOrder();
  print("Your order is $orderItem");
}



Future<void> main() async {
  print('Fetching user order...');
  print(await createOrderMessage());
}
```
---
## Future.value()

```dart
Future<List<String>> fetchCustomer() => Future.value([
      "John Petrucci",
      "Andy James",
      "Messi",
      "Oxlade Chaimberlain",
      "Paul Gilbert"
    ]);
void main() async {
  try {
    var users = await fetchCustomer();
    users.forEach((user)=>print(user));
  } catch (e) {
    print(e);
  }
}

```

--- 

## Future.error()
```dart
Future<List<String>> fetchCustomerWithError() =>
    Future.error(Exception('Sorry You Got Error'));
void main() async {
  try {
    var result = await fetchCustomerWithError();
    print(result);
  } catch (e) {
    print(e);
  }
}

```

---

# Practice Time


### **Exercise 1**
- **`fetchRole()`**	
  - `Future<String> fetchRole()`	
  - Gets a short description of the user’s role.

- ### `reportUserRole()`

  - Add code to the `reportUserRole()` function so that it does the following:

  - Returns a future that completes with the following string:

  - "User role: <user role>"

- Note: You must use the actual value returned by `fetchRole()`; copying and pasting the example return value won’t make the test pass.

- Example return value: "User role: tester"
- Gets the user role by calling the provided function fetchRole().

---

### **Exercise 2**

- `reportLogins()`
- Implement an async function reportLogins() so that it does the following:

  - Returns the string `"Total number of logins: <# of logins>".`
 - Note: You must use the actual value returned by fetchLoginAmount();
 - Example return value from `reportLogins():`
  -  "Total number of logins: 57"
- Gets the number of logins by calling the provided function `fetchLoginAmount()`.

---


