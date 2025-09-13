# 📌 Flutter Scroll to Section Demo  

A Flutter project that demonstrates how to **smoothly scroll to a specific section** of a long screen.  
This pattern is especially useful for content-heavy apps (insights, FAQs, documentation, e-learning, etc.), where users can jump directly to the information they need.  

---

## ✨ Features  

- 🔑 **Highlight Navigation** – Tap a topic on Screen 1, auto-scroll to the relevant section on Screen 2.  
- 🎯 **Smooth Scroll Animation** – Uses `Scrollable.ensureVisible` for a clean user experience.  
- 🧩 **Dynamic Section Keys** – Each section is mapped to a `GlobalKey` for precise control.  
- 📱 **Clean UI Demo** – Example data is filled with Gen-Z inspired sample content (easy to replace with real content).  

---

---

## 🚀 Getting Started  

### Prerequisites  
- Flutter SDK (3.0+ recommended)  
- Dart (stable channel)  

### Installation  

```bash
git clone https://github.com/abhi-staark/Smooth-Scrolling.git
cd demoapp
flutter pub get
flutter run
