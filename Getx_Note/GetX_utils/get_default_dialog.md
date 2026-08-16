# 📦 Get.defaultDialog()

## 📖 পরিচিতি

**Get.defaultDialog()** হলো GetX-এর একটি Built-in Method, যা খুব সহজে একটি সুন্দর Alert Dialog দেখানোর জন্য ব্যবহার করা হয়।

এটি Flutter-এর `showDialog()`-এর তুলনায় অনেক সহজ এবং `BuildContext` ছাড়াই কাজ করে।

> 💡 সহজ ভাষায়, **Get.defaultDialog()** ব্যবহার করে কয়েক লাইনের Code-এ Alert Dialog দেখানো যায়।

---

# 🎯 কেন Get.defaultDialog() ব্যবহার করা হয়?

- ✅ Delete Confirmation
- ✅ Logout Confirmation
- ✅ Warning Message
- ✅ Success Dialog
- ✅ Error Dialog
- ✅ Information Dialog

---

# 💻 Syntax

```dart
Get.defaultDialog(
  title: "Title",
  middleText: "Message",
);
```

---

# 💻 Example

```dart
Get.defaultDialog(
  title: "Delete",
  middleText: "Are you sure you want to delete this item?",
);
```

---

# ⚙️ Common Properties

| Property | Description |
|----------|-------------|
| `title` | Dialog-এর Title |
| `middleText` | Dialog-এর Message |
| `textConfirm` | Confirm Button Text |
| `textCancel` | Cancel Button Text |
| `onConfirm` | Confirm Button Click Event |
| `onCancel` | Cancel Button Click Event |
| `confirmTextColor` | Confirm Button Text Color |
| `buttonColor` | Button Color |
| `barrierDismissible` | বাইরে Tap করলে Dialog বন্ধ হবে কি না |

---

# 💻 Advanced Example

```dart
Get.defaultDialog(
  title: "Logout",
  middleText: "Are you sure?",
  textConfirm: "Yes",
  textCancel: "No",
  onConfirm: () {
    Get.back();
  },
);
```

---

# 📌 কখন ব্যবহার করবেন?

- Delete Confirmation
- Logout Confirmation
- Exit App
- Warning Message
- Success Message

---

# ⚠️ গুরুত্বপূর্ণ বিষয়

`Get.defaultDialog()` ব্যবহার করার জন্য Project-এ অবশ্যই `GetMaterialApp` থাকতে হবে।

---

# 🎤 ইন্টারভিউ প্রশ্ন ও উত্তর

### ১. Get.defaultDialog() কী?

**উত্তর:**

Get.defaultDialog() হলো GetX-এর একটি Built-in Method, যা খুব সহজে একটি Alert Dialog দেখানোর জন্য ব্যবহার করা হয়।

---

### ২. কেন Get.defaultDialog() ব্যবহার করা হয়?

**উত্তর:**

User-এর Confirmation নেওয়া, Warning দেখানো অথবা গুরুত্বপূর্ণ Message প্রদর্শনের জন্য এটি ব্যবহার করা হয়।

---

### ৩. Get.defaultDialog()-এর সবচেয়ে বড় সুবিধা কী?

**উত্তর:**

এটি ব্যবহার করতে `BuildContext` প্রয়োজন হয় না এবং খুব কম Code লিখেই Dialog দেখানো যায়।

---

# 📝 Summary

- Built-in Alert Dialog
- BuildContext লাগে না
- Confirmation Dialog-এর জন্য সবচেয়ে বেশি ব্যবহৃত হয়
- খুব কম Code-এ Dialog তৈরি করা যায়