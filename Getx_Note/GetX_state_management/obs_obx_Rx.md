# 🔄 GetX Reactive State Management

GetX-এ Reactive State Management ব্যবহার করে কোনো State পরিবর্তন হলে সেই State-এর উপর নির্ভর করা UI Automatically Update করা যায়।

GetX-এর Reactive State Management-এর মূল বিষয়গুলো হলো:

- `Rx`
- `.obs`
- `Obx`

---

# 🧠 Rx কী?

**Rx** হলো GetX-এর Reactive Data Type।

কোনো Variable-কে `Rx` করলে GetX সেই Variable-এর Value পরিবর্তন Observe করতে পারে।

সহজভাবে:

```text
Normal Variable
      ↓
Value Change
      ↓
UI Automatically Update হবে না
```

কিন্তু:

```text
Rx Variable
      ↓
Value Change
      ↓
GetX Change Detect করবে
      ↓
Obx UI Update করবে
```

---

# 📦 Rx-এর সাথে বিভিন্ন Data Type

GetX-এ বিভিন্ন ধরনের Data Reactive করা যায়।

যেমন:

- `RxInt`
- `RxDouble`
- `RxBool`
- `RxString`

---

# 1️⃣ RxInt

`RxInt` ব্যবহার করা হয় **Integer Value** Reactive করার জন্য।

### Example

```dart
RxInt count = 0.obs;
```

এখানে:

```text
RxInt → Reactive Integer
0     → Initial Value
.obs  → Reactive করার জন্য
```

Value Change:

```dart
count++;
```

অথবা:

```dart
count.value++;
```

---

# 2️⃣ RxDouble

`RxDouble` ব্যবহার করা হয় **Double / Decimal Value** Reactive করার জন্য।

### Example

```dart
RxDouble price = 99.99.obs;
```

Value Change:

```dart
price.value = 120.50;
```

---

# 3️⃣ RxBool

`RxBool` ব্যবহার করা হয় **Boolean Value (`true` / `false`)** Reactive করার জন্য।

### Example

```dart
RxBool isLoading = false.obs;
```

Value Change:

```dart
isLoading.value = true;
```

অথবা:

```dart
isLoading.toggle();
```

`toggle()` ব্যবহার করলে:

```text
false → true
true  → false
```

---

# 4️⃣ RxString

`RxString` ব্যবহার করা হয় **String Value** Reactive করার জন্য।

### Example

```dart
RxString name = "Tuhin".obs;
```

Value Change:

```dart
name.value = "Flutter Developer";
```

---

# 📊 Rx Data Types

| Rx Type | Data Type | Example |
|---|---|---|
| `RxInt` | Integer | `0.obs` |
| `RxDouble` | Double | `10.5.obs` |
| `RxBool` | Boolean | `false.obs` |
| `RxString` | String | `"Hello".obs` |

---

# ⭐ `.obs` কী?

`.obs` হলো GetX-এর একটি Extension, যা একটি সাধারণ Value-কে **Reactive Value** হিসেবে তৈরি করে।

### Normal Variable

```dart
int count = 0;
```

এটি Reactive নয়।

### Reactive Variable

```dart
RxInt count = 0.obs;
```

এটি Reactive।

---

# 💡 `.obs` সহজভাবে

```dart
0.obs
```

মানে:

> "এই Value-টিকে Reactive করে দাও।"

---

### আরও Example

```dart
String name = "Tuhin".obs;
```

তবে এখানে Type সাধারণ `String` না হয়ে Reactive Type হিসেবে কাজ করবে।

আরও পরিষ্কারভাবে লিখলে:

```dart
RxString name = "Tuhin".obs;
```

একইভাবে:

```dart
RxInt count = 0.obs;

RxDouble price = 99.99.obs;

RxBool isLoading = false.obs;

RxString name = "Tuhin".obs;
```

---

# 🔍 `.value` কী?

Rx Variable-এর ভিতরের আসল Value Access বা Change করার জন্য `.value` ব্যবহার করা হয়।

### Example

```dart
RxInt count = 0.obs;
```

Value পাওয়া:

```dart
print(count.value);
```

Value Change:

```dart
count.value = 10;
```

---

# ⚡ কিছু ক্ষেত্রে `.value` ছাড়াও কাজ করা যায়

কিছু Rx Type-এর ক্ষেত্রে GetX operator overload করে, তাই সরাসরি লেখা যায়।

```dart
count++;
```

এর পরিবর্তে:

```dart
count.value++;
```

দুটিই ব্যবহার করা যায়।

তবে Beginner হিসেবে `.value` বুঝে ব্যবহার করা গুরুত্বপূর্ণ।

---

# 📦 Obx কী?

**Obx** হলো GetX-এর একটি Reactive Widget।

এর ভিতরে যে Reactive Variable ব্যবহার করা হয়, সেই Variable-এর Value পরিবর্তন হলে `Obx` Automatically UI Rebuild করে।

সহজভাবে:

```text
Rx Variable
     ↓
Value Change
     ↓
Obx detects change
     ↓
UI Rebuild
```

---

# 💻 Obx Example

```dart
RxInt count = 0.obs;
```

UI:

```dart
Obx(
  () => Text(
    count.toString(),
  ),
);
```

Button:

```dart
ElevatedButton(
  onPressed: () {
    count++;
  },
  child: const Text("Increment"),
);
```

এখন:

```text
count = 0
     ↓
Button Click
     ↓
count = 1
     ↓
Obx detects change
     ↓
Text automatically updates
```

---

# 🎯 Obx-এর প্রধান কাজ

`Obx`-এর কাজ হলো **Reactive UI তৈরি করা**।

অর্থাৎ Reactive Variable পরিবর্তন হলে শুধুমাত্র প্রয়োজনীয় Widget-এর UI Update করা।

---

# 🆚 Normal Variable vs Reactive Variable

## ❌ Normal Variable

```dart
int count = 0;
```

শুধু Value Change করলে UI Automatically Update হবে না।

---

## ✅ Reactive Variable

```dart
RxInt count = 0.obs;
```

এবং:

```dart
Obx(
  () => Text(
    count.toString(),
  ),
);
```

এখন `count` পরিবর্তন হলে `Obx` UI Update করবে।

---

# 💻 Complete Example

```dart
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CounterController extends GetxController {

  RxInt count = 0.obs;

  void increment() {
    count++;
  }

  void decrement() {
    count--;
  }
}

class CounterScreen extends StatelessWidget {
  CounterScreen({super.key});

  final CounterController controller =
      Get.put(CounterController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("GetX Counter"),
      ),

      body: Center(
        child: Obx(
          () => Text(
            controller.count.toString(),
            style: const TextStyle(
              fontSize: 30,
            ),
          ),
        ),
      ),

      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [

          FloatingActionButton(
            onPressed: controller.decrement,
            child: const Icon(Icons.remove),
          ),

          const SizedBox(width: 10),

          FloatingActionButton(
            onPressed: controller.increment,
            child: const Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}
```

---

# 🧩 GetX Reactive Flow

```text
       Rx Variable
           │
           ↓
       Value Change
           │
           ↓
      GetX Detects Change
           │
           ↓
          Obx
           │
           ↓
       UI Rebuild
```

---

# 📌 কখন `Rx` ব্যবহার করবেন?

Reactive State দরকার হলে `Rx` ব্যবহার করবেন।

যেমন:

- Counter
- Loading State
- Login Status
- User Name
- Product Price
- Cart Quantity
- Dark Mode Status
- API Response State

---

# 💡 Real World Example

ধরো একটি Login Screen আছে।

```dart
RxBool isLoading = false.obs;
```

Login শুরু হলে:

```dart
isLoading.value = true;
```

Login শেষ হলে:

```dart
isLoading.value = false;
```

UI:

```dart
Obx(
  () => isLoading.value
      ? const CircularProgressIndicator()
      : const Text("Login"),
);
```

এখন `isLoading` পরিবর্তন হলে UI Automatically পরিবর্তন হবে।

---

# ⚠️ গুরুত্বপূর্ণ বিষয়

### 1. Reactive Variable-এর জন্য `.obs` ব্যবহার করতে হয়

```dart
RxInt count = 0.obs;
```

---

### 2. Reactive UI-এর জন্য `Obx` ব্যবহার করতে হয়

```dart
Obx(
  () => Text(
    count.toString(),
  ),
);
```

---

### 3. Rx Value Access করতে `.value` ব্যবহার করা যায়

```dart
print(count.value);
```

---

### 4. `Obx`-এর ভিতরে Reactive Variable ব্যবহার করতে হবে

```dart
Obx(
  () => Text(
    count.toString(),
  ),
);
```

এখানে `count` Reactive হওয়ায় Value Change হলে `Obx` Update হবে।

---

# 📊 Rx vs obs vs Obx

| বিষয় | কাজ |
|---|---|
| `RxInt` | Reactive Integer তৈরি করে |
| `RxDouble` | Reactive Double তৈরি করে |
| `RxBool` | Reactive Boolean তৈরি করে |
| `RxString` | Reactive String তৈরি করে |
| `.obs` | Value-কে Reactive করে |
| `Obx` | Reactive Value পরিবর্তন হলে UI Update করে |
| `.value` | Rx-এর ভিতরের Value Access/Change করে |

---

# 🎤 Interview Questions & Answers

## Q1. GetX-এ Rx কী?

### ✅ উত্তর

`Rx` হলো GetX-এর Reactive Data Type, যা কোনো Value-এর পরিবর্তন Observe করতে সাহায্য করে এবং Reactive UI Update করার সুবিধা দেয়।

---

## Q2. `.obs` কী?

### ✅ উত্তর

`.obs` হলো GetX-এর একটি Extension, যা একটি সাধারণ Value-কে Reactive Value হিসেবে তৈরি করে।

```dart
RxInt count = 0.obs;
```

---

## Q3. Obx কী?

### ✅ উত্তর

`Obx` হলো GetX-এর একটি Reactive Widget। এর ভিতরে ব্যবহৃত Reactive Variable পরিবর্তন হলে `Obx` Automatically UI Rebuild করে।

---

## Q4. RxInt কী?

### ✅ উত্তর

`RxInt` হলো Reactive Integer Type।

```dart
RxInt count = 0.obs;
```

---

## Q5. RxBool কোথায় ব্যবহার করা হয়?

### ✅ উত্তর

`RxBool` সাধারণত এমন State-এর জন্য ব্যবহার করা হয় যার Value `true` অথবা `false` হয়।

যেমন:

```dart
RxBool isLoading = false.obs;
```

---

## Q6. `.value` কেন ব্যবহার করা হয়?

### ✅ উত্তর

Rx Variable-এর ভিতরের আসল Value Access বা Update করার জন্য `.value` ব্যবহার করা হয়।

```dart
count.value = 10;
```

---

## Q7. Rx এবং Obx-এর মধ্যে সম্পর্ক কী?

### ✅ উত্তর

`Rx` হলো Reactive State এবং `Obx` হলো সেই State-এর উপর নির্ভর করা Reactive UI।

```text
Rx
 ↓
State Change
 ↓
Obx
 ↓
UI Update
```

---

## Q8. `setState()` এবং GetX `Obx`-এর মধ্যে পার্থক্য কী?

### ✅ উত্তর

`setState()` StatefulWidget-এর Local State Update করার জন্য ব্যবহৃত হয়।

অন্যদিকে `Obx` GetX-এর Reactive State ব্যবহার করে এবং Reactive Variable পরিবর্তন হলে সংশ্লিষ্ট UI Automatically Update করে।

---

# 📝 Summary

GetX Reactive State Management-এর মূল Concept হলো:

```text
       .obs
        ↓
    Reactive State
        ↓
       Obx
        ↓
   Automatic UI Update
```

### মনে রাখার সহজ Formula:

```text
Rx     → Reactive Data Type
.obs   → Value-কে Reactive করে
.value → Value Access/Change করে
Obx    → UI Automatically Update করে
```

### Example:

```dart
RxInt count = 0.obs;

Obx(
  () => Text(
    count.toString(),
  ),
);
```

> 💡 **Golden Rule:**  
> **`.obs` দিয়ে State Reactive করুন → `Obx` দিয়ে সেই State-এর UI Observe করুন।**