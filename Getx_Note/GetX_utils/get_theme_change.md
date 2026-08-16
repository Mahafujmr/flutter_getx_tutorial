# 📦 Get.changeTheme()

## 📖 পরিচিতি

**Get.changeTheme()** হলো GetX-এর একটি Built-in Method, যা Runtime-এ Application-এর Theme (Light / Dark) পরিবর্তন করার জন্য ব্যবহার করা হয়।

Flutter-এর Theme পরিবর্তন করার জন্য `setState()` বা `BuildContext` ব্যবহার করার প্রয়োজন হয় না।

> 💡 সহজ ভাষায়, **Get.changeTheme() ব্যবহার করে App Restart ছাড়াই Theme পরিবর্তন করা যায়।**

---

# 🎯 কেন Get.changeTheme() ব্যবহার করা হয়?

- ✅ Light Theme থেকে Dark Theme-এ পরিবর্তন করতে
- ✅ Dark Theme থেকে Light Theme-এ পরিবর্তন করতে
- ✅ User-এর Theme Preference পরিবর্তন করতে

---

# 💻 Syntax

```dart
Get.changeTheme(
  ThemeData.dark(),
);
```

---

# 💻 Example

### Light Theme

```dart
Get.changeTheme(
  ThemeData.light(),
);
```

### Dark Theme

```dart
Get.changeTheme(
  ThemeData.dark(),
);
```

---

# ⚠️ গুরুত্বপূর্ণ বিষয়

`Get.changeTheme()` ব্যবহার করার জন্য অবশ্যই `GetMaterialApp`-এ Theme সেট করতে হবে।

```dart
GetMaterialApp(
  theme: ThemeData.light(),
  darkTheme: ThemeData.dark(),
  home: HomeScreen(),
)
```

---

# 📌 কখন ব্যবহার করবেন?

- Theme Switch Button
- Dark Mode
- Light Mode
- User Settings Screen

---

# 🎤 ইন্টারভিউ প্রশ্ন ও উত্তর

### ১. Get.changeTheme() কী?

**উত্তর:**

Get.changeTheme() হলো GetX-এর একটি Method, যা Application-এর Theme Runtime-এ পরিবর্তন করার জন্য ব্যবহার করা হয়।

---

### ২. কেন Get.changeTheme() ব্যবহার করা হয়?

**উত্তর:**

Light Mode এবং Dark Mode-এর মধ্যে সহজে Theme পরিবর্তন করার জন্য এটি ব্যবহার করা হয়।

---

### ৩. Get.changeTheme() ব্যবহার করতে কী প্রয়োজন?

**উত্তর:**

Project-এর Root Widget হিসেবে `GetMaterialApp` ব্যবহার করতে হবে এবং সেখানে `theme` অথবা `darkTheme` সেট করতে হবে।

---

### ৪. Get.changeTheme()-এর সবচেয়ে বড় সুবিধা কী?

**উত্তর:**

Theme পরিবর্তন করতে `BuildContext` বা `setState()` প্রয়োজন হয় না এবং পুরো Application-এর Theme সঙ্গে সঙ্গে Update হয়ে যায়।

---

# 📝 Summary

- `Get.changeTheme()` GetX-এর Built-in Theme Management Method।
- Runtime-এ Theme পরিবর্তন করা যায়।
- `BuildContext` এবং `setState()` প্রয়োজন হয় না।
- সাধারণত Light Mode এবং Dark Mode Toggle করার জন্য ব্যবহার করা হয়।