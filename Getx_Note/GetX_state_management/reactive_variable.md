# GetX Reactive State Management — Notes

Quick reference notes on **Reactive Variable**, **`.obs`**, and **`Obx()`** in GetX.

---

## 1. Reactive Variable কী?

Reactive variable হলো এমন একটা variable, যাকে GetX **observe (নজরে রাখে)**। এর মান বদলালে GetX সেটা টের পায়, এবং যেসব widget এটা ব্যবহার করছে সেগুলো **automatically rebuild** হয়ে যায় — `setState()` ছাড়াই।

### Normal vs Reactive

```dart
int counter = 0;        // ❌ Normal variable — GetX চিনবে না, watch করতে পারবে না
RxInt counter = 0.obs;  // ✅ Reactive variable — GetX watch করতে পারবে
```

### Common Reactive Types

| Normal Type | Reactive Type |
|---|---|
| `int` | `RxInt` |
| `double` | `RxDouble` |
| `String` | `RxString` |
| `bool` | `RxBool` |
| `List` | `RxList` |
| `Map` | `RxMap` |
| Custom Object | `Rx<T>` |

---

## 2. `.obs` কী?

`.obs` হলো একটা **extension**, যেটা normal variable-কে Rx (reactive) variable-এ রূপান্তর করে। এটাকে ভাবতে পারেন একটা **transmitter** বসানোর মতো — যেটা মান বদলালেই সিগন্যাল পাঠায়।

```dart
RxInt counter = 0.obs;
RxDouble opacity = 0.4.obs;
RxString name = ''.obs;
RxBool isLoggedIn = false.obs;
```

⚠️ মান পড়তে/বদলাতে সবসময় `.value` ব্যবহার করতে হয়:

```dart
counter.value++;          // মান বদলানো
print(counter.value);     // মান পড়া
```

**কেন `.obs` লাগে?**
`.obs` ছাড়া variable-টা plain-ই থেকে যায়। GetX-এর কোনো listen/notify সিস্টেম তার সাথে যুক্ত হয় না, ফলে মান বদলালেও UI জানতে পারে না।

---

## 3. `Obx()` কী?

`Obx()` হলো একটা **widget**, যেটা reactive variable-কে "শোনে" (listen করে) এবং মান বদলালেই **শুধু নিজেকে** rebuild করে — পুরো screen না।

```dart
Obx(() => Text('${controller.counter.value}'))
```

এটাকে ভাবতে পারেন একটা **receiver**-এর মতো, যেটা `.obs` (transmitter) থেকে আসা সিগন্যাল ধরে UI আপডেট করে।

---

## 4. পুরো Flow (Example)

```dart
class CounterController extends GetxController {
  RxInt counter = 0.obs;   // 1. Reactive variable বানানো

  void increment() {
    counter.value++;       // 2. মান বদলানো
  }
}
```

```dart
final controller = Get.put(CounterController());

Obx(() => Text('Count: ${controller.counter.value}')),  // 3. দেখানো + auto-update

ElevatedButton(
  onPressed: () => controller.increment(),  // 4. মান বদলানোর trigger
  child: Text('Add'),
)
```

**কী ঘটে:** বাটনে ক্লিক → `increment()` কল → `counter.value` বদলায় → GetX detect করে → `Obx()` rebuild হয় → স্ক্রিনে নতুন মান দেখা যায়। কোনো `setState()` লাগে না।

---

## 5. Analogy (মনে রাখার সহজ উপায়)

| Term | উপমা |
|---|---|
| Normal variable | ট্রান্সমিটার ছাড়া রেডিও — সিগন্যাল পাঠায় না |
| `.obs` | Variable-এর ভেতরে ট্রান্সমিটার বসানো |
| `Obx()` | রিসিভার — সিগন্যাল ধরে UI আপডেট করে |

---

## 6. কেন Reactive Variable ব্যবহার করা হয়?

| কারণ | ব্যাখ্যা |
|---|---|
| ⚡ Performance | পুরো widget না, শুধু নির্দিষ্ট অংশ rebuild হয় |
| ✂️ কম কোড | `setState()` বারবার লিখতে হয় না |
| 🧩 Separation of Concerns | UI ও Logic আলাদা থাকে |
| 🔄 Auto Real-time Update | মান বদলালেই সব জায়গায় সাথে সাথে reflect হয় |
| 🔗 Easy State Sharing | `Get.find()` দিয়ে যেকোনো জায়গা থেকে controller access করা যায় |

---

## 7. Quick Cheat Sheet

```dart
// তৈরি করা
RxInt x = 0.obs;

// মান পড়া
print(x.value);

// মান বদলানো
x.value = 5;
x.value++;

// UI-তে দেখানো
Obx(() => Text('${x.value}'))
```

> **মনে রাখুন:** `.obs` দিয়ে variable বানাও → `Obx()` দিয়ে দেখাও → মান বদলালেই UI নিজে থেকে আপডেট হয়ে যাবে। 🚀