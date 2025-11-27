# Laza E-Shop 🛍️

A modern, feature-rich e-commerce mobile application built with **Flutter**. This app provides a seamless shopping experience with a clean UI, secure authentication, and robust product management.

## 📱 Preview

![App Preview](assets/preview.gif)

https://github.com/user-attachments/assets/94f0cf22-077d-40e2-a3c1-f1a04efa9755



## ✨ Features

- 🔐 **Authentication**: Secure login, sign-up, and email verification using OTP.
- 👋 **Onboarding**: Smooth and engaging onboarding experience for new users.
- 🏠 **Home Screen**: Browse a wide variety of products and categories.
- 📦 **Product Details**: View detailed product information, including high-quality images, descriptions, price, stock status, weight, and applicable discounts.
- 📱 **Responsive Design**: Fully optimized for various screen sizes and pixel densities using `flutter_screenutil`.
- 🔍 **Search**: Find products quickly with an efficient search functionality.
- 🦴 **Skeleton Loading**: Smooth loading states using `skeletonizer` for a better user experience.

## 🚧 In Development

The following features are currently being crafted with care:

- ❤️ **Wishlist**: Save your favorite items for later access.
- 🛒 **Cart**: Manage items in your shopping cart and proceed to secure checkout.

## 🏗️ Architecture

This project follows a **Feature-First Architecture** combined with **Clean Architecture** principles to ensure scalability, maintainability, and testability.

```text
lib/
├── core/           # Core functionality (DI, Networking, Themes, Utils, Widgets)
├── features/       # Feature-based modules (Auth, Home, Onboarding, etc.)
│   ├── auth/
│   │   ├── data/   # Models, Repositories, Data Sources
│   │   ├── ui/     # Screens, Widgets, Cubits/Blocs
│   │   └── ...
│   ├── home/
│   └── ...
├── main.dart       # Application entry point
└── ...
```

- **State Management**: `flutter_bloc` (Cubits) for predictable state management.
- **Dependency Injection**: `get_it` for decoupled service location.
- **Networking**: `dio` with `retrofit` for type-safe API calls.

## 🛠️ Tech Stack & Packages

We use a robust stack of libraries to build a high-quality app:

| Category | Package | Description |
| :--- | :--- | :--- |
| **Framework** | [Flutter](https://flutter.dev/) | Google's UI toolkit for building natively compiled applications. |
| **State Management** | [flutter_bloc](https://pub.dev/packages/flutter_bloc) | Predictable state management library. |
| **Networking** | [dio](https://pub.dev/packages/dio) | A powerful HTTP client for Dart. |
| **Networking** | [retrofit](https://pub.dev/packages/retrofit) | Type-safe HTTP client generator. |
| **DI** | [get_it](https://pub.dev/packages/get_it) | Simple Service Locator for Dart and Flutter. |
| **UI/Responsive** | [flutter_screenutil](https://pub.dev/packages/flutter_screenutil) | Screen adaptation tool for responsive UI. |
| **Storage** | [flutter_secure_storage](https://pub.dev/packages/flutter_secure_storage) | Secure storage for sensitive data (tokens, etc.). |
| **Storage** | [shared_preferences](https://pub.dev/packages/shared_preferences) | Persistent storage for simple data. |
| **Code Gen** | [freezed](https://pub.dev/packages/freezed) | Code generation for immutable classes and unions. |
| **Code Gen** | [json_serializable](https://pub.dev/packages/json_serializable) | Automatically generate code for converting to/from JSON. |
| **Images** | [cached_network_image](https://pub.dev/packages/cached_network_image) | Download, cache, and show images. |
| **Images** | [flutter_svg](https://pub.dev/packages/flutter_svg) | SVG rendering and widget library. |
| **Loading** | [skeletonizer](https://pub.dev/packages/skeletonizer) | Create skeleton loading effects automatically. |
| **Input** | [pinput](https://pub.dev/packages/pinput) | Pin code input (OTP) widget. |
| **Logging** | [pretty_dio_logger](https://pub.dev/packages/pretty_dio_logger) | Pretty Dio logger for debugging API calls. |

## 🚀 Getting Started

Follow these steps to set up the project locally:

1. **Clone the repository:**

    ```bash
    git clone https://github.com/MohammedEhap007/laza-eshop.git
    ```

2. **Install dependencies:**

    ```bash
    flutter pub get
    ```

3. **Generate code (if needed):**

    ```bash
    dart run build_runner build --delete-conflicting-outputs
    ```

4. **Run the app:**

    ```bash
    flutter run
    ```

## 🤝 Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

1. Fork the Project
2. Create your Feature Branch (`git checkout -b feature/AmazingFeature`)
3. Commit your Changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the Branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

## 📄 License

Distributed under the MIT License. See `LICENSE` for more information.

---

Made with ❤️ by [Mohammed Ehap](https://github.com/MohammedEhap007)
