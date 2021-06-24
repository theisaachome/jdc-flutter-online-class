## **Asynchronous programming: Streams**


- [Table of Content](#table-of-content)
- [What is Streams](#what-is-streams)
- [Future and Stream class](#Future-and-Stream-class)
- [Creating Streams](#creating-streams)
- [Error events](#error-events)

---

### What is Streams
- Streams provide an asynchronous sequence of data.

  - Data sequences include user-generated events and 

  - Data read from files.

- You can process a stream using either `await for` or `listen()` from the Stream API.

- Streams provide a way to respond to errors.

- There are two kinds of streams: 
  - single subscription or
  - broadcast.

--- 
## **Asynchronous programming in Dart** 

###  **Future and Stream class**

- **A Future :**
  - A computation doesn’t complete  immediately.
  - Where a normal function returns the result, 
  - an asynchronous function returns a Future, 
  - which will  contain the result.
  - The future will tell you when the result is ready.

- **A Stream :**
  -  a sequence of asynchronous events.
  - It is like an asynchronous Iterable—where,
  - the stream tells you that there is an event when it is ready.
---

### Creating Streams

- Streams can be created in many ways,

#### Example
```dart
void main() {
  final stream = Stream.fromIterable([1, 0, 11, 12, 13, 14, 15, 16]);
}
```
### Example receiving stream events
```dart
Future<int> sumStream(Stream<int> streams) async {
  var sum = 0;
  await for (var value in streams) {
    sum += value;
  }
  return sum;
}
```
```dart
Future<int> sumStreamValueWithReduce(Stream<int> streams) async {
  return streams.reduce((previous, element) => previous + element);
}
```
### Example User Generating Events

- Using Dart Web Development

- User will click on Button 

  - First, we install the web development tools:

  ```dart
  pub global activate webdev
  ```
  - Testinng  webdev is working,

  ```dart
  webdev
  ```
  - Install Stagehand, a Dart scaffolding tool:

  ``` dart
  pub global activate stagehand
  ```
  - Make sure stagehand is working,

### **Creating Web development Project**
- run this command:
```dart
stagehand web-simple
```
- The project scaffold will be created.

```dart 
pub get
```
- The dependencies for the project will be resolved and updated.

- Run the following command and
- open your browser to http://localhost:8080 

```dart 
webdev serve
```
---
## **Working with streams**

- The Stream class contains a number of helper methods.

- ### **Methods that process a stream**
```dart
Future<T> get first;

Future<bool> get isEmpty;

Future<T> get last;

Future<int> get length;

Future<T> get single;

Future<bool> any(bool Function(T element) test);

Future<bool> contains(Object? needle);

Future<E> drain<E>([E? futureValue]);

Future<T> elementAt(int index);

Future<bool> every(bool Function(T element) test);

Future<T> firstWhere(bool Function(T element) test, {T Function()? orElse});

Future<S> fold<S>(S initialValue, S Function(S previous, T element) combine);

Future forEach(void Function(T element) action);

Future<String> join([String separator = '']);

Future<T> lastWhere(bool Function(T element) test, {T Function()? orElse});

Future pipe(StreamConsumer<T> streamConsumer);

Future<T> reduce(T Function(T previous, T element) combine);

Future<T> singleWhere(bool Function(T element) test, {T Function()? orElse});

Future<List<T>> toList();

Future<Set<T>> toSet();
```

### Example Guess the word game

---

## **Stream Operators**
### **Methods that modify a stream**

  - The following methods on Stream return a new stream based on the original stream.
  - Each one waits until someone listens on the new stream before listening on the original.
  - All of these can be written easily using an async function with an await for loop.

  ```dart
  Stream<R> cast<R>();
  Stream<S> expand<S>(Iterable<S> Function(T element) convert);
  Stream<S> map<S>(S Function(T event) convert);
  Stream<T> skip(int count);
  Stream<T> skipWhile(bool Function(T element) test);
  Stream<T> take(int count);
  Stream<T> takeWhile(bool Function(T element) test);
  Stream<T> where(bool Function(T event) test);
  ```

  - The final three functions are more special.
  ```dart
  Stream<T> handleError(Function onError, {bool Function(dynamic error)? test});
  Stream<T> timeout(Duration timeLimit,
    {void Function(EventSink<T> sink)? onTimeout});
  Stream<S> transform<S>(StreamTransformer<T, S> streamTransformer);

  ```


### **Error events**

- if an error happens before the stream is done :

  - someone needs to know about it.

- Streams can also deliver error events like it delivers data events.

- Most streams will stop after the first error

- it is possible to have streams that deliver more than one error,

- streams that deliver more data after an error event.


### Example
```dart
Future<int> sumStream(Stream<int> stream) async {
  var sum = 0;
  try {
    await for (var value in stream) {
      sum += value;
    }
  } catch (e) {
    return -1;
  }
  return sum;
}
```
```dart
Stream<int> countStream(int to) async* {
  for (int i = 1; i <= to; i++) {
    if (i == 4) {
      throw Exception('Intentional exception');
    } else {
      yield i;
    }
  }
}
```
```dart
Future<void> main() async {
  var stream = countStream(10);
  var sum = await sumStream(stream);
  print(sum); // -1
}
```
