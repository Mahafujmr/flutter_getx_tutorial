# 📦 Get.bottomSheet()

## 📖 পরিচিতি

**Get.bottomSheet()** হলো GetX-এর একটি Built-in Method, যা Screen-এর নিচের (Bottom) অংশ থেকে একটি Panel বা Sheet দেখানোর জন্য ব্যবহার করা হয়।

Flutter-এর `showModalBottomSheet()`-এর তুলনায় এটি অনেক সহজ এবং `BuildContext` ছাড়াই কাজ করে।

> 💡 সহজ ভাষায়, **Get.bottomSheet() ব্যবহার করে Screen-এর নিচ থেকে একটি Popup Menu বা Custom UI দেখানো হয়।**

---

# 🎯 কেন Get.bottomSheet() ব্যবহার করা হয়?

নিচের ধরনের Feature তৈরির জন্য এটি বেশি ব্যবহার করা হয়—

- ✅ Option Menu
- ✅ Filter Panel
- ✅ Share Menu
- ✅ Language Selection
- ✅ Theme Selection
- ✅ Action Menu
- ✅ Custom Form

---

# 💻 Syntax

```dart
Get.bottomSheet(
  Widget(),
);
```

---

# 💻 Basic Example

```dart
Get.bottomSheet(
  Container(
    height: 200,
    color: Colors.white,
    child: Center(
      child: Text("Hello GetX Bottom Sheet"),
    ),
  ),
);
```

---

# 💻 Advanced Example

```dart
Get.bottomSheet(
  Container(
    padding: EdgeInsets.all(20),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.vertical(
        top: Radius.circular(20),
      ),
    ),
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ListTile(
          leading: Icon(Icons.share),
          title: Text("Share"),
        ),
        ListTile(
          leading: Icon(Icons.delete),
          title: Text("Delete"),
        ),
      ],
    ),
  ),
  isDismissible: true,
  enableDrag: true,
);
```

---

# ⚙️ Common Properties

| Property | Description |
|----------|-------------|
| `backgroundColor` | Bottom Sheet-এর Background Color |
| `elevation` | Shadow নির্ধারণ করে |
| `shape` | Shape বা Border Design |
| `isDismissible` | বাইরে Tap করলে বন্ধ হবে কি না |
| `enableDrag` | Drag করে বন্ধ করা যাবে কি না |
| `ignoreSafeArea` | Safe Area Ignore করবে কি না |

---

# 📌 কখন ব্যবহার করবেন?

- Option Menu
- Share Menu
- Theme Change
- Language Selection
- Delete Option
- Filter Bottom Sheet
- Custom Action Menu

---

# ⚠️ গুরুত্বপূর্ণ বিষয়

`Get.bottomSheet()` ব্যবহার করার জন্য Project-এ অবশ্যই `GetMaterialApp` ব্যবহার করতে হবে।

```dart
GetMaterialApp(
  home: HomeScreen(),
)
```

---

# 📊 Get.bottomSheet() vs showModalBottomSheet()

| Get.bottomSheet() | showModalBottomSheet() |
|-------------------|------------------------|
| BuildContext লাগে না | BuildContext লাগে |
| GetX-এর অংশ | Flutter-এর Built-in Method |
| কম Code | তুলনামূলক বেশি Code |
| ব্যবহার করা সহজ | একটু বেশি Configuration লাগে |

---

# 🎤 ইন্টারভিউ প্রশ্ন ও উত্তর

### ১. Get.bottomSheet() কী?

**উত্তর:**

Get.bottomSheet() হলো GetX-এর একটি Built-in Method, যা Screen-এর নিচ থেকে একটি Bottom Sheet বা Popup Panel দেখানোর জন্য ব্যবহৃত হয়।

---

### ২. কেন Get.bottomSheet() ব্যবহার করা হয়?

**উত্তর:**

User-কে বিভিন্ন Option, Action Menu, Filter, Theme Selection অথবা Custom UI দেখানোর জন্য Get.bottomSheet() ব্যবহার করা হয়।

---

### ৩. Get.bottomSheet() ব্যবহার করতে কী প্রয়োজন?

**উত্তর:**

Project-এর Root Widget হিসেবে `GetMaterialApp` ব্যবহার করতে হবে।

---

### ৪. Get.bottomSheet() এবং showModalBottomSheet()-এর মধ্যে পার্থক্য কী?

**উত্তর:**

`showModalBottomSheet()` ব্যবহার করতে `BuildContext` প্রয়োজন হয়, কিন্তু `Get.bottomSheet()`-এ `BuildContext` লাগে না। তাই Get.bottomSheet() ব্যবহার করা সহজ এবং কম Code লিখতে হয়।

---

### ৫. Get.bottomSheet()-এ Custom Widget ব্যবহার করা যায়?

**উত্তর:**

হ্যাঁ। `Get.bottomSheet()`-এর ভিতরে যেকোনো Flutter Widget যেমন `Container`, `Column`, `ListView`, `Form` বা `Card` ব্যবহার করা যায়।

---

# 📝 Summary

- `Get.bottomSheet()` GetX-এর Built-in Bottom Sheet Method।
- Screen-এর নিচ থেকে Popup Panel দেখানোর জন্য ব্যবহার করা হয়।
- `BuildContext` প্রয়োজন হয় না।
- `GetMaterialApp` ব্যবহার করলে এটি সঠিকভাবে কাজ করে।
- Option Menu, Filter Panel, Theme Selection এবং Custom UI তৈরির জন্য এটি খুবই উপযোগী।