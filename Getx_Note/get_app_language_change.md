# 🌍 GetX Localization & Change App Language

## 📖 পরিচিতি

**Localization** হলো একটি Application-কে একাধিক ভাষায় ব্যবহার করার সুবিধা দেওয়ার প্রক্রিয়া।

উদাহরণস্বরূপ, একটি App-এ User চাইলে—

* 🇧🇩 বাংলা
* 🇬🇧 English
* 🇸🇦 Arabic

ভাষা নির্বাচন করতে পারবে।

GetX ব্যবহার করে খুব সহজেই **App Language Change** এবং **Localization** Implement করা যায়।

---

# 🎯 কেন Localization ব্যবহার করবো?

একটি App যদি বিভিন্ন দেশের User ব্যবহার করে, তাহলে একাধিক ভাষা Support করা দরকার।

Localization ব্যবহার করলে—

* User নিজের পছন্দের Language নির্বাচন করতে পারে।
* একই App বিভিন্ন ভাষায় ব্যবহার করা যায়।
* International User-এর জন্য App তৈরি করা সহজ হয়।
* User Experience উন্নত হয়।

---

# 🧠 GetX Localization কীভাবে কাজ করে?

GetX Localization মূলত ৩টি বিষয়ের উপর কাজ করে:

```text
Translations
     ↓
Language / Locale
     ↓
Translated Text
```

### 1. Translations

প্রতিটি Language-এর জন্য Text সংরক্ষণ করা হয়।

### 2. Locale

বর্তমানে কোন Language ব্যবহার হচ্ছে সেটি নির্ধারণ করে।

### 3. Translated Text

বর্তমান Locale অনুযায়ী সঠিক Text দেখানো হয়।

---

# 📦 GetX Localization-এর প্রধান অংশ

GetX Localization Implement করতে সাধারণত ৩টি বিষয় প্রয়োজন:

```text
1. Translations Class
2. Locale
3. GetMaterialApp Configuration
```

---

# 1️⃣ Create Translation Class

প্রথমে `Translations` Class তৈরি করতে হবে।

```dart
class AppTranslations extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
    'en_US': {
      'hello': 'Hello',
      'welcome': 'Welcome',
    },

    'bn_BD': {
      'hello': 'হ্যালো',
      'welcome': 'স্বাগতম',
    },
  };
}
```

এখানে—

```text
en_US → English Language

bn_BD → Bangla Language
```

---

# 2️⃣ Configure GetMaterialApp

এরপর `GetMaterialApp`-এ Translation সেট করতে হবে।

```dart
GetMaterialApp(
  translations: AppTranslations(),

  locale: const Locale('en', 'US'),

  fallbackLocale: const Locale('en', 'US'),

  home: HomeScreen(),
);
```

### গুরুত্বপূর্ণ Properties

| Property         | কাজ                                                     |
| ---------------- | ------------------------------------------------------- |
| `translations`   | Translation Class সেট করে                               |
| `locale`         | Initial Language নির্ধারণ করে                           |
| `fallbackLocale` | Translation না পাওয়া গেলে Default Language ব্যবহার করে |

---

# 3️⃣ Translation Text ব্যবহার করা

Translation Key ব্যবহার করে Text দেখাতে হয়।

```dart
Text('hello'.tr)
```

যদি Current Language English হয়:

```text
Hello
```

আর যদি Bangla হয়:

```text
হ্যালো
```

GetX Automatically সঠিক Translation দেখাবে।

---

# 🔄 Change App Language

User Runtime-এ Language Change করতে চাইলে:

```dart
Get.updateLocale(
  const Locale('bn', 'BD'),
);
```

English করার জন্য:

```dart
Get.updateLocale(
  const Locale('en', 'US'),
);
```

---

# 💻 Complete Example

```dart
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppTranslations extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
    'en_US': {
      'hello': 'Hello',
      'welcome': 'Welcome',
    },

    'bn_BD': {
      'hello': 'হ্যালো',
      'welcome': 'স্বাগতম',
    },
  };
}

void main() {
  runApp(
    GetMaterialApp(
      translations: AppTranslations(),

      locale: const Locale('en', 'US'),

      fallbackLocale: const Locale('en', 'US'),

      home: HomeScreen(),
    ),
  );
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('hello'.tr),
      ),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          Text(
            'welcome'.tr,
          ),

          const SizedBox(height: 20),

          ElevatedButton(
            onPressed: () {
              Get.updateLocale(
                const Locale('bn', 'BD'),
              );
            },
            child: const Text(
              'বাংলা',
            ),
          ),

          ElevatedButton(
            onPressed: () {
              Get.updateLocale(
                const Locale('en', 'US'),
              );
            },
            child: const Text(
              'English',
            ),
          ),
        ],
      ),
    );
  }
}
```

---

# ⚙️ Important GetX Localization Methods

| Method               | কাজ                                 |
| -------------------- | ----------------------------------- |
| `.tr`                | Translation Text পাওয়ার জন্য       |
| `Get.updateLocale()` | Current Language পরিবর্তন করার জন্য |
| `Translations`       | Translation Data তৈরি করার জন্য     |

---

# 📌 `.tr` কী?

`.tr` হলো GetX-এর Translation Getter।

```dart
Text('hello'.tr)
```

এখানে:

```text
hello → Translation Key
.tr   → Current Language অনুযায়ী Text Return করে
```

---

# 📌 Get.updateLocale() কী?

`Get.updateLocale()` ব্যবহার করে Runtime-এ Application-এর Language পরিবর্তন করা হয়।

```dart
Get.updateLocale(
  const Locale('bn', 'BD'),
);
```

এতে App-এর Current Locale পরিবর্তন হয়ে যাবে এবং `.tr` ব্যবহার করা Textগুলো নতুন Language অনুযায়ী Update হবে।

---

# 🌍 Locale কী?

**Locale** হলো Language এবং Region-এর Identifier।

Example:

```dart
Locale('en', 'US')
```

এখানে:

```text
en → English Language
US → United States
```

আর—

```dart
Locale('bn', 'BD')
```

এখানে:

```text
bn → Bangla Language
BD → Bangladesh
```

---

# 💡 Real World Example

ধরো একটি E-commerce App আছে।

User Settings থেকে নির্বাচন করলো:

```text
Language

○ English
● বাংলা
```

User বাংলা নির্বাচন করলে:

```text
Home
```

পরিবর্তন হয়ে:

```text
হোম
```

এবং:

```text
Add to Cart
```

পরিবর্তন হয়ে:

```text
কার্টে যোগ করুন
```

GetX-এর `Get.updateLocale()` এবং `.tr` ব্যবহার করে এই কাজ করা যায়।

---

# ⚠️ Important Notes

### 1. `GetMaterialApp` ব্যবহার করতে হবে

Localization-এর জন্য সাধারণত `MaterialApp`-এর পরিবর্তে `GetMaterialApp` ব্যবহার করতে হবে।

### 2. Translation Key একই রাখতে হবে

English:

```dart
'hello': 'Hello'
```

Bangla:

```dart
'hello': 'হ্যালো'
```

এখানে `hello` Key দুই Language-এই একই থাকতে হবে।

### 3. `fallbackLocale` রাখা ভালো

যদি কোনো Translation পাওয়া না যায়, তাহলে `fallbackLocale` ব্যবহার করে Default Language দেখানো যায়।

---

# 🎯 কখন Localization ব্যবহার করবেন?

Localization ব্যবহার করা উচিত যখন—

* 🌍 International App তৈরি করছেন।
* 🇧🇩 একাধিক Language Support করতে হবে।
* 👥 বিভিন্ন দেশের User App ব্যবহার করবে।
* ⚙️ Settings থেকে Language Change করার Feature থাকবে।

---

# 🎤 Interview Questions & Answers

## Q1. Localization কী?

### ✅ উত্তর

Localization হলো একটি Application-কে একাধিক Language-এ ব্যবহার করার সুবিধা দেওয়ার প্রক্রিয়া।

---

## Q2. GetX Localization কী?

### ✅ উত্তর

GetX Localization হলো GetX-এর একটি Feature, যার মাধ্যমে Application-এ একাধিক Language Support এবং Runtime-এ Language Change করা যায়।

---

## Q3. GetX-এ Translation কীভাবে তৈরি করা হয়?

### ✅ উত্তর

`Translations` Class Extend করে প্রতিটি Language-এর জন্য Translation Map তৈরি করা হয়।

```dart
class AppTranslations extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
    'en_US': {
      'hello': 'Hello',
    },

    'bn_BD': {
      'hello': 'হ্যালো',
    },
  };
}
```

---

## Q4. `.tr` কী কাজ করে?

### ✅ উত্তর

`.tr` Current Locale অনুযায়ী একটি Translation Key-এর সঠিক Text Return করে।

```dart
Text('hello'.tr)
```

---

## Q5. Get.updateLocale() কী?

### ✅ উত্তর

`Get.updateLocale()` Runtime-এ Application-এর Current Language বা Locale পরিবর্তন করার জন্য ব্যবহার করা হয়।

```dart
Get.updateLocale(
  const Locale('bn', 'BD'),
);
```

---

## Q6. Locale কী?

### ✅ উত্তর

Locale হলো Language এবং Region-এর Identifier।

উদাহরণ:

```dart
Locale('bn', 'BD')
```

এখানে `bn` হলো Bangla Language এবং `BD` হলো Bangladesh Region।

---

## Q7. fallbackLocale কী?

### ✅ উত্তর

`fallbackLocale` হলো Default Locale। কোনো Translation না পাওয়া গেলে GetX এই Locale-এর Translation ব্যবহার করতে পারে।

---

# 📝 Summary

GetX Localization ব্যবহার করে সহজেই একটি Flutter Application-এ Multiple Language Support যোগ করা যায়।

মূল বিষয়গুলো:

```text
Translations
     ↓
Locale
     ↓
.tr
     ↓
Get.updateLocale()
```

### মনে রাখুন:

* `Translations` → Translation Data তৈরি করে।
* `locale` → Current/Initial Language নির্ধারণ করে।
* `fallbackLocale` → Default/Fallback Language নির্ধারণ করে।
* `.tr` → Translation Text পাওয়ার জন্য।
* `Get.updateLocale()` → Runtime-এ Language Change করার জন্য।

> 💡 **Short Formula:**
> **Translations + Locale + `.tr` + `Get.updateLocale()` = GetX Localization**
