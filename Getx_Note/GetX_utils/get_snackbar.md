# 📦 Get.snackbar()

## 📖 পরিচিতি

**Get.snackbar()** হলো GetX-এর একটি Built-in Method, যা Screen-এর উপরের অংশে (Top) অথবা নিচের অংশে (Bottom) একটি ছোট Notification Message দেখানোর জন্য ব্যবহার করা হয়।

এটি সাধারণত User-কে কোনো Action-এর Result জানাতে ব্যবহার করা হয়।

> 💡 সহজ ভাষায়, **Get.snackbar()** ব্যবহার করে User-কে দ্রুত একটি Message দেখানো হয়।

---

# 🎯 কেন Get.snackbar() ব্যবহার করা হয়?

- ✅ Success Message দেখানোর জন্য
- ✅ Error Message দেখানোর জন্য
- ✅ Warning Message দেখানোর জন্য
- ✅ Information Message দেখানোর জন্য

---

# 💻 Syntax

```dart
Get.snackbar(
  "Title",
  "Message",
);
```

---

# 💻 Example

```dart
Get.snackbar(
  "Success",
  "Login Successful",
);
```

---

# ⚙️ Common Properties

| Property | Description |
|----------|-------------|
| `title` | Snackbar-এর শিরোনাম |
| `message` | Snackbar-এর মূল বার্তা |
| `snackPosition` | কোথায় দেখাবে (Top / Bottom) |
| `backgroundColor` | Background Color |
| `colorText` | Text Color |
| `duration` | কতক্ষণ Snackbar দেখাবে |
| `icon` | Icon যোগ করার জন্য |
| `margin` | বাইরের Space |
| `borderRadius` | Corner গোল করার জন্য |

---

# 💻 Advanced Example

```dart
Get.snackbar(
  "Success",
  "Data Saved Successfully",
  snackPosition: SnackPosition.BOTTOM,
  backgroundColor: Colors.green,
  colorText: Colors.white,
  duration: Duration(seconds: 3),
);
```

---

# 📌 কখন ব্যবহার করবেন?

- Login Successful
- Registration Completed
- Data Saved
- Data Deleted
- Internet Error
- Form Validation Message

---

# ⚠️ গুরুত্বপূর্ণ বিষয়

`Get.snackbar()` ব্যবহার করার জন্য Project-এ অবশ্যই **GetMaterialApp** ব্যবহার করতে হবে।

```dart
GetMaterialApp(
  home: HomeScreen(),
)
```

---

# 🎤 ইন্টারভিউ প্রশ্ন ও উত্তর

### ১. Get.snackbar() কী?

**উত্তর:**

Get.snackbar() হলো GetX-এর একটি Method, যা User-কে ছোট Notification Message দেখানোর জন্য ব্যবহৃত হয়।

---

### ২. কেন Get.snackbar() ব্যবহার করা হয়?

**উত্তর:**

User-কে Success, Error, Warning অথবা Information Message দ্রুত দেখানোর জন্য Get.snackbar() ব্যবহার করা হয়।

---

### ৩. Get.snackbar() ব্যবহার করতে কী প্রয়োজন?

**উত্তর:**

Project-এর Root Widget হিসেবে `GetMaterialApp` ব্যবহার করতে হবে।

---

### ৪. Get.snackbar() এবং ScaffoldMessenger-এর মধ্যে পার্থক্য কী?

**উত্তর:**

`ScaffoldMessenger` ব্যবহার করতে `BuildContext` প্রয়োজন হয়।

কিন্তু `Get.snackbar()` ব্যবহার করতে `BuildContext` লাগে না, তাই এটি আরও সহজ এবং সংক্ষিপ্ত।

---

# 📝 Summary

- `Get.snackbar()` GetX-এর Built-in Notification Method।
- Success, Error, Warning এবং Info Message দেখানোর জন্য ব্যবহার করা হয়।
- `BuildContext` প্রয়োজন হয় না।
- `GetMaterialApp` ব্যবহার করলে এটি সঠিকভাবে কাজ করে।
- এটি Flutter-এর Default Snackbar-এর তুলনায় সহজ এবং কম Code-এ ব্যবহার করা যায়।